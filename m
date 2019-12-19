Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2E91261B4
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 13:07:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C39E26E33C;
	Thu, 19 Dec 2019 12:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2C66E33C
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 12:07:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 04:07:18 -0800
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="210442079"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.11.180])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 04:07:17 -0800
MIME-Version: 1.0
In-Reply-To: <20191219105043.4169050-1-chris@chris-wilson.co.uk>
References: <20191219105043.4169050-1-chris@chris-wilson.co.uk>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 19 Dec 2019 14:07:14 +0200
Message-ID: <157675723449.9436.12167216218154839425@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Track engine round-trip times
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

Quoting Chris Wilson (2019-12-19 12:50:43)
> Knowing the round trip time of an engine is useful for tracking the
> health of the system as well as providing a metric for the baseline
> responsiveness of the engine. We can use the latter metric for
> automatically tuning our waits in selftests and when idling so we don't
> confuse a slower system with a dead one.
> 
> Upon idling the engine, we send one last pulse to switch the context
> away from precious user state to the volatile kernel context. We know
> the engine is idle at this point, and the pulse is non-preemptible, so
> this provides us with a good measurement of the round trip time. It also
> provides us with faster engine parking for ringbuffer submission, which
> is a welcome bonus (e.g. softer-rc6).
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>

<SNIP>

> +/* A simple estimator for the round-trip latency of an engine */
> +DECLARE_EWMA(delay, 6, 4)

i915_delay as the minimum to emphasis that this is specific tous,
with that name clarified;

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
