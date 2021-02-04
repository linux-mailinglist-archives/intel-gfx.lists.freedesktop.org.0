Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BCE30F237
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 12:32:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 324BC6E044;
	Thu,  4 Feb 2021 11:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0974A6E047
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 11:32:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23785475-1500050 for multiple; Thu, 04 Feb 2021 11:32:41 +0000
MIME-Version: 1.0
In-Reply-To: <ad0639e8-7eab-7d38-1cc2-f93bd1800c6b@linux.intel.com>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-22-chris@chris-wilson.co.uk>
 <ad0639e8-7eab-7d38-1cc2-f93bd1800c6b@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 04 Feb 2021 11:32:39 +0000
Message-ID: <161243835979.1383.963404604088914403@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 22/57] drm/i915: Move scheduler queue
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

Quoting Tvrtko Ursulin (2021-02-04 11:19:00)
> 
> On 01/02/2021 08:56, Chris Wilson wrote:
> >   bool intel_engine_is_idle(struct intel_engine_cs *engine)
> >   {
> > +     struct i915_sched *se = intel_engine_get_scheduler(engine);
> 
> What do you have 'se' stand for?

Originally i915_sched_engine, then working backwards there was just a
single i915_sched struct (but may have a few working together). So it's
CPU runlist with a bit more speciality logic.

This is akin to drm_sched_entity, se could work for that. Other ideas
for the name would be i915_sched_queue.

Anyway se stuck around from the first pass. It was easy to type!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
