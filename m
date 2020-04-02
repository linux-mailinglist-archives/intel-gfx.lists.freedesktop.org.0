Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD4219BFF1
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 13:13:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C776EA54;
	Thu,  2 Apr 2020 11:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDBAA6EA54
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 11:12:58 +0000 (UTC)
IronPort-SDR: c0H6kEEnzoekBkWfFYDQ65clGUmxBLy6wc/eJdmSOgNLH8klvYykLSWcwwajG/ciFtgt94aHP8
 wuNuRri+oNvA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:12:58 -0700
IronPort-SDR: 7Jw7hEzpCylIXIU82ckCBjtoRWtjXEL4yuZyts5wrYuWkd9sAFKokz7/cZTIHwoO0gyciyEudp
 Cg5gfY7NPk0w==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="396330087"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:12:57 -0700
Message-ID: <5b6dffae85775e03430f6b5f145dce89de5f090b.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Thu, 02 Apr 2020 13:12:55 +0200
In-Reply-To: <158582415436.5852.10336291395981297377@build.alporthouse.com>
References: <20200402101906.26770-1-janusz.krzysztofik@linux.intel.com>
 <158582291010.5852.5907909973655746744@build.alporthouse.com>
 <76357b91f247b1fddf17e49546cb3c16088f19cc.camel@linux.intel.com>
 <158582354467.5852.14996836692896232181@build.alporthouse.com>
 <ab862af7b50bb456072463e90328538fc563739d.camel@linux.intel.com>
 <158582415436.5852.10336291395981297377@build.alporthouse.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: Suppress page allocation
 warnings on engine park
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-04-02 at 11:42 +0100, Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-04-02 11:36:21)
> > On Thu, 2020-04-02 at 11:32 +0100, Chris Wilson wrote:
> > > Quoting Janusz Krzysztofik (2020-04-02 11:28:03)
> > > > On Thu, 2020-04-02 at 11:21 +0100, Chris Wilson wrote:
> > > > > Quoting Janusz Krzysztofik (2020-04-02 11:19:06)
> > > > > > On memory constrained systems it may happen that no pages are available
> > > > > > for serving object creation attempt during engine park.  Since we can
> > > > > > and we do ignore that failure, let's suppress possible warnings from
> > > > > > page allocator to avoid confusion and make CI happy.
> > > > > 
> > > > > The effect of ignoring it though is dangerous, hence why I had a
> > > > > warning.
> > > > 
> > > > Then maybe just WARN() from switch_to_kernel_context() on
> > > > __i915_request_create() returning -ENOMEM instead?
> > > 
> > > The warning exists already. The only real question is what to do about
> > > it; the best answer would be to preallocate the final request during
> > > unpark where we can report an error, but that would take a bit more
> > > effort to refactor request allocation. Hence the warning to make it a
> > > futureselves problem.
> > 
> > I meant a warning with a very specific message that could be filtered
> > easily by CI for now.
> 
> It has a very specific stacktrace, 

If CI is able to filter on specific stacktrace then OK.

> and I hope by filtered you mean
> identified and reported as an issue, possibly with multiple causes since
> this is an indication that reclaim is snafu.

Identified and reported as the reclaim issue specifically rather than
something quite general like:
TGL: igt@gem_exec_create@madvise - dmesg-warn - SUCCESS, page allocation failure: order:0, mode:0x40810(GFP_NOWAIT|__GFP_COMP|__GFP_RECLAIMABLE), nodemask=(null)

Thanks,
Janusz

> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
