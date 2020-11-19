Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4632B9A64
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46FF16E58B;
	Thu, 19 Nov 2020 18:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 844EB6E58B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:11:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23046168-1500050 for multiple; Thu, 19 Nov 2020 18:11:47 +0000
MIME-Version: 1.0
In-Reply-To: <a9e94017-1fe9-2b99-3a0a-eec1e303c197@linux.intel.com>
References: <20201119165616.10834-1-chris@chris-wilson.co.uk>
 <20201119165616.10834-4-chris@chris-wilson.co.uk>
 <a9e94017-1fe9-2b99-3a0a-eec1e303c197@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 18:11:45 +0000
Message-ID: <160580950553.3416.9585045594534337472@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [CI 4/6] drm/i915/gt: Show all active timelines for
 debugging
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

Quoting Tvrtko Ursulin (2020-11-19 18:08:49)
> 
> On 19/11/2020 16:56, Chris Wilson wrote:
> > Include the active timelines for debugfs/i915_engine_info, so that we
> > can see which have unready requests inflight which are not shown
> > otherwise.
> > 
> > Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Reviewd-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Wrong paste, I believe I r-b-ed this one.

Pebkac. I shall have to sit in the corner for a bit.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
