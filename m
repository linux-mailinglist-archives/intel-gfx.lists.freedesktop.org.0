Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0164513A5B6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 11:15:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CB26E33E;
	Tue, 14 Jan 2020 10:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C46D06E33E;
 Tue, 14 Jan 2020 10:15:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19872277-1500050 for multiple; Tue, 14 Jan 2020 10:15:28 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <06e82c0a-3752-6d30-0aa0-0bb9993b5bae@linux.intel.com>
References: <20200110115320.1284901-1-chris@chris-wilson.co.uk>
 <06e82c0a-3752-6d30-0aa0-0bb9993b5bae@linux.intel.com>
Message-ID: <157899692591.27314.10652294075559860834@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 14 Jan 2020 10:15:25 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3] i915/perf: Find the
 associated perf-type for a particular device
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-01-14 10:09:15)
> 
> On 10/01/2020 11:53, Chris Wilson wrote:
> > -uint64_t i915_type_id(void)
> > +static char *bus_address(int i915, char *path, int pathlen)
> > +{
> > +     struct stat st;
> > +     int len = -1;
> > +     int dir;
> > +     char *s;
> > +
> > +     if (fstat(i915, &st) || !S_ISCHR(st.st_mode))
> > +             return NULL;
> > +
> > +     snprintf(path, pathlen, "/sys/dev/char/%d:%d",
> > +              major(st.st_rdev), minor(st.st_rdev));
> > +
> > +     dir = open(path, O_RDONLY);
> > +     if (dir != -1) {
> > +             len = readlinkat(dir, "device", path, pathlen - 1);
> > +             close(dir);
> > +     }
> > +     if (len < 0)
> > +             return NULL;
> > +
> > +     path[len] = '\0';
> 
> In the realm of hypothetical but an assert that no truncation occurred 
> would be good.
> 
> if (len == pathlen - 1)
>         return NULL;
> 
> ?
> 
> Although it is not clear to me from man readlinkat how do we distinguish 
> between truncation and exact fit.
> 
> Or you were counting on failure at a later step if truncation occurred?

I did not expect a partial match to ever succeed. We at least know for
the moment the names are fixed.

> Maybe try stat(2) in this wrapper to be sure function returns a valid path?

That would have the same danger of a partial match.

I think the foolproof solution here is having pmu_name in
/sys/class/drm/cardN/pmu_name. (Or rather
/sys/dev/char/%d:%d/device/pnu_name. :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
