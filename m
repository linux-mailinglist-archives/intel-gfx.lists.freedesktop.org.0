Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F912B5F3F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 13:37:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C146E1E9;
	Tue, 17 Nov 2020 12:37:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ECEA6E1E9;
 Tue, 17 Nov 2020 12:37:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23017250-1500050 for multiple; Tue, 17 Nov 2020 12:37:26 +0000
MIME-Version: 1.0
In-Reply-To: <8bdb8c26-cd11-2826-7ecf-89a30bb7d7a8@linux.intel.com>
References: <20201117114050.302583-1-tvrtko.ursulin@linux.intel.com>
 <160561548452.22621.12237070971991385724@build.alporthouse.com>
 <8bdb8c26-cd11-2826-7ecf-89a30bb7d7a8@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Tue, 17 Nov 2020 12:37:28 +0000
Message-ID: <160561664850.22621.14294691374580871616@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t] gem_wsim: Implement device selection
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-11-17 12:33:11)
> 
> On 17/11/2020 12:18, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-11-17 11:40:50)
> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>
> >> -L and -D <device> on the command line.
> >>
> >> With no device specified tool tries to find i915 discrete or integrated in
> >> that order.
> > 
> > Ok, looks straightforward enough. (I still like having an idiot's guide
> > with examples of -L output and what to pass to -D).
> > 
> >> +       fd = igt_open_card(&card);
> >> +       igt_require(fd);
> > 
> > Does igt_require() still generate weirdness when used outside of igt
> > tests?
> 
> It appears to do nothing. But more importantly I don't know how I ended 
> up with it here. Probably some copy & paste again.
> 
> > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Can I convert to igt_assert and keep the r-b?

Make it return sensibly with a wsim_err.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
