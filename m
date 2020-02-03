Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2DC15124A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 23:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90DD66E451;
	Mon,  3 Feb 2020 22:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB8A6E44E;
 Mon,  3 Feb 2020 22:18:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20105789-1500050 for multiple; Mon, 03 Feb 2020 22:18:53 +0000
MIME-Version: 1.0
To: Antonio Argenziano <antonio.argenziano@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <4b37a582-fd82-f6b8-bc0b-d0f75aafafda@intel.com>
References: <20200203214518.723198-1-chris@chris-wilson.co.uk>
 <4b37a582-fd82-f6b8-bc0b-d0f75aafafda@intel.com>
Message-ID: <158076833186.27392.1232173407287492916@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 03 Feb 2020 22:18:51 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_basic: Drop per-engine
 testing of *execbuf
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

Quoting Antonio Argenziano (2020-02-03 22:15:26)
> 
> 
> On 03/02/20 13:45, Chris Wilson wrote:
> > @@ -121,30 +43,29 @@ igt_main
> >   
> >       igt_fixture {
> >               fd = drm_open_driver(DRIVER_INTEL);
> > -             igt_require_gem(fd);
> > -
> > +             /* igt_require_gem(fd); // test is mandatory */
> 
> What if that fd is bad? Assert?

fd can't be bad, that's taken care of by drm_open_driver(). If the
driver is unusable for execbuf, we want the test failure. It's a choice.

Not sure the right answer, both have advantages.

> > +static void mmapped(int i915)
> > +{
> > +     struct drm_i915_gem_execbuffer2 *execbuf;
> > +     struct drm_i915_gem_exec_object2 *exec;
> > +     uint32_t handle;
> 
> gem_require_mappable_ggtt()?

No... I was dropping a hint in the name. How's the toolbox?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
