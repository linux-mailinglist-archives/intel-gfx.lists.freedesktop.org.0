Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD0130575C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 10:51:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BAF389FDE;
	Wed, 27 Jan 2021 09:51:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9D289FC3;
 Wed, 27 Jan 2021 09:51:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23711752-1500050 for multiple; Wed, 27 Jan 2021 09:51:23 +0000
MIME-Version: 1.0
In-Reply-To: <5c3f792f-9b87-ba90-69ee-4c2c982d8aa5@linux.intel.com>
References: <20210126130505.2938391-1-chris@chris-wilson.co.uk>
 <20210126130505.2938391-2-chris@chris-wilson.co.uk>
 <183f9081-0aeb-ebad-da8e-0dc25c449d2f@linux.intel.com>
 <161169867584.2943.4917889020493124389@build.alporthouse.com>
 <5c3f792f-9b87-ba90-69ee-4c2c982d8aa5@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 09:51:26 +0000
Message-ID: <161174108605.919.13414856950880362875@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915/sysfs_clients: Check that
 client ids are cyclic
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

Quoting Tvrtko Ursulin (2021-01-27 09:12:00)
> 
> On 26/01/2021 22:04, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2021-01-26 16:47:14)
> >> On 26/01/2021 13:05, Chris Wilson wrote:
> >>> The client id used is a cyclic allocator as that reduces the likelihood
> >>> of userspace seeing the same id used again (and so confusing the new
> >>> client as the old). Verify that each new client has an id greater than
> >>> the last.
> >>>
> >>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> >>> ---
> >>>    tests/i915/sysfs_clients.c | 129 +++++++++++++++++++++++++++++++------
> >>>    1 file changed, 108 insertions(+), 21 deletions(-)
> >>>
> >>> diff --git a/tests/i915/sysfs_clients.c b/tests/i915/sysfs_clients.c
> >>> index a3a1f81e1..d2c1ebc5f 100644
> >>> --- a/tests/i915/sysfs_clients.c
> >>> +++ b/tests/i915/sysfs_clients.c
> >>> @@ -8,6 +8,7 @@
> >>>    #include <errno.h>
> >>>    #include <fcntl.h>
> >>>    #include <inttypes.h>
> >>> +#include <limits.h>
> >>>    #include <math.h>
> >>>    #include <sched.h>
> >>>    #include <sys/socket.h>
> >>> @@ -47,6 +48,8 @@
> >>>    #define assert_within_epsilon(x, ref, tolerance) \
> >>>        __assert_within_epsilon(x, ref, tolerance / 100., tolerance / 100.)
> >>>    
> >>> +#define BUFSZ 280
> >>> +
> >>>    #define MI_BATCH_BUFFER_START (0x31 << 23)
> >>>    #define MI_BATCH_BUFFER_END (0xa << 23)
> >>>    #define MI_ARB_CHECK (0x5 << 23)
> >>> @@ -75,7 +78,7 @@ static void pidname(int i915, int clients)
> >>>    {
> >>>        struct dirent *de;
> >>>        int sv[2], rv[2];
> >>> -     char buf[280];
> >>> +     char buf[BUFSZ];
> >>>        int me = -1;
> >>>        long count;
> >>>        pid_t pid;
> >>> @@ -180,7 +183,7 @@ static long count_clients(int clients)
> >>>    {
> >>>        struct dirent *de;
> >>>        long count = 0;
> >>> -     char buf[280];
> >>> +     char buf[BUFSZ];
> >>>        DIR *dir;
> >>>    
> >>>        dir = fdopendir(dup(clients));
> >>> @@ -229,32 +232,113 @@ static void create(int i915, int clients)
> >>>        igt_assert_eq(count_clients(clients), 1);
> >>>    }
> >>>    
> >>> +static const char *find_client(int clients, pid_t pid, char *buf)
> >>> +{
> >>> +     DIR *dir = fdopendir(dup(clients));
> >>> +
> >>> +     /* Reading a dir as it changes does not appear to be stable, SEP */
> >>
> >> Oh yes, it is POSIX undefined as far as I could figure out. You are
> >> creating/destroying clients while reading the dir from different
> >> threads?
> > 
> > Different processes on different directory fd. man readdir(3) does say
> > that glibc is threadsafe, but that is not a requirement of POSIX. The
> > problem we are seeing is that the directory contents are not stable
> > around the readdir loop as clients are being created/destroyed, causing
> > dirents to be missed.
> > 
> > stracing the problem shows that glibc used a 32KiB buffer for getdents
> > and only a single syscall was required to grab the entire directory. No
> > errors were seen before the missed dirent. It just seemed to be missing.
> > 
> > Afaict there is no delay in creating the sysfs entry, and I think there
> > should also be no delay in creating the kernfs node and inodes, so my
> > initial assumption is that it's something not quite happy in the
> > kernfs directory that shows up under stress. A second loop ran for a
> > long time without incident locally, but CI seems much more adept at
> > finding it.
> 
> I think we are talking about the same thing..

The manpages only talked about the thread-safety of the library readdir,
and since you mentioned threads not processes, I was hopeful.

> >> I think best might be to introduce explicit sync points between
> >> those two entities to make this reliable. In another review for the same
> >> problem I suggested pipes for implementing this handshake. Along the
> >> lines of "let child open/close some processes, make it wait for parent;
> >> parent scans sysfs, signals child to open/close some more; repeat for a
> >> while".
> > 
> > Sadly, I don't expect userspace to do that :)
> > 
> > I do expect userspace to search for its own client/ upon creation, and I
> > expect there to be many clients being opened at once. So I think so long
> > as the use of the library readdir is correct (distinct processes with
> > distinct directory fd, so I think there's no accidental sharing) this
> > represents. Hmm. fsync(dirfd).
> 
> ...and I think it is just not guaranteed that reading the dir in 
> parallel to dentries being created/deleted is guaranteed to work (no 
> guarantee for discovering newly addded or deleted clients since the 
> iteration started). Or you are saying that a client opens itself starts 
> readdir loop and then fails to find itself?

That's exactly what happens -- but with multiple concurrent processes.
(Needs to run with one process to double check).

device = gem_reopen_driver(i915);
DIR fdopendir(open("/sysfs/clients", O_DIRECTORY))
rewinddir();
while (readdir) ...
=> this pid not found
	
> Otherwise, I was thinking, if we wanted to allow clients to inspect 
> themselves, we should really add a getrusage(2) like ioctl.

Maybe, but I've yet to see something that says a directory operation
prior to a opendir/rewinddir will not be visible in readdir. POSIX says
that directory operations in parallel to the readdir, whether or not
those are visible in the next readdir is undefined, but it seems to be
clear on operations prior to opening the directory.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
