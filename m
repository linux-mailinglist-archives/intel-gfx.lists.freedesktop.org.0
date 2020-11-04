Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9543C2A646E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 13:34:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC5D46ED00;
	Wed,  4 Nov 2020 12:34:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F7756ED00
 for <Intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 12:33:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22891666-1500050 for multiple; Wed, 04 Nov 2020 12:33:55 +0000
MIME-Version: 1.0
In-Reply-To: <20201104122043.876567-2-tvrtko.ursulin@linux.intel.com>
References: <20201104122043.876567-1-tvrtko.ursulin@linux.intel.com>
 <20201104122043.876567-2-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Wed, 04 Nov 2020 12:33:52 +0000
Message-ID: <160449323247.15691.17140244371195703868@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915: Use user engine names in error
 state ecode
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

Quoting Tvrtko Ursulin (2020-11-04 12:20:43)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Instead of printing out the internal engine mask, which can change between
> kernel versions making it difficult to map to actual engines, list user
> friendly engine names in the ecode string. For example:

Nah. It's a nonsense number, just exists for quick and futile discrimination.
Trying to interpret it is pointless.

There's very little value to be gained from it, it should just serve as a
tale-tell that we have captured an error state. The action and impact of
the reset should be separately recorded.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
