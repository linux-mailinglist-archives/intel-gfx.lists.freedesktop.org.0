Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D09C12337A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 18:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96FA06E1A5;
	Tue, 17 Dec 2019 17:26:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B796E1A5
 for <Intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 17:26:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19612349-1500050 for multiple; Tue, 17 Dec 2019 17:26:32 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <20191216120704.958-3-tvrtko.ursulin@linux.intel.com>
 <157650082706.2428.8789012781722817984@skylake-alporthouse-com>
 <b3eba5e5-950c-c31a-f716-c63b31863d8d@linux.intel.com>
In-Reply-To: <b3eba5e5-950c-c31a-f716-c63b31863d8d@linux.intel.com>
Message-ID: <157660359014.8790.1578518758016924361@skylake-alporthouse-com>
Date: Tue, 17 Dec 2019 17:26:30 +0000
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Expose list of clients in
 sysfs
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

Quoting Tvrtko Ursulin (2019-12-17 17:21:28)
> 
> On 16/12/2019 12:53, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2019-12-16 12:07:01)
> >> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> >> index 0781b6326b8c..9fcbcb6d6f76 100644
> >> --- a/drivers/gpu/drm/i915/i915_drv.h
> >> +++ b/drivers/gpu/drm/i915/i915_drv.h
> >> @@ -224,6 +224,20 @@ struct drm_i915_file_private {
> >>          /** ban_score: Accumulated score of all ctx bans and fast hangs. */
> >>          atomic_t ban_score;
> >>          unsigned long hang_timestamp;
> >> +
> >> +       struct i915_drm_client {
> >> +               unsigned int id;
> >> +
> >> +               struct pid *pid;
> >> +               char *name;
> > 
> > Hmm. Should we scrap i915_gem_context.pid and just use the client.pid?
> 
> Or maybe leave as it so I don't have to worry about ctx vs client 
> lifetime. In other words places where we access ctx->pid and the client 
> is maybe long gone. I don't want to ref count clients, or maybe I do.. 
> hmm.. keeping GPU load of a client which exited and left work running 
> visible?

Yeah. If we don't and all the GPU time is being hogged by zombies, users
of the interface will not be impressed they can't identify those. Next
up, kill(client_id, SIGKILL).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
