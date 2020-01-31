Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D4414EB4D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 11:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C3AE6E968;
	Fri, 31 Jan 2020 10:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD0616E968
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 10:54:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 02:54:05 -0800
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="218577593"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.21.8])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 02:54:03 -0800
MIME-Version: 1.0
In-Reply-To: <20200130164553.1937718-1-chris@chris-wilson.co.uk>
References: <20200130164330.1922670-1-chris@chris-wilson.co.uk>
 <20200130164553.1937718-1-chris@chris-wilson.co.uk>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Fri, 31 Jan 2020 12:54:00 +0200
Message-ID: <158046804087.8720.14184392770463408179@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Require per-engine reset
 support for non-persistent contexts
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

Quoting Chris Wilson (2020-01-30 18:45:53)
> To enable non-persistent contexts, we require a means of cancelling any
> inflight work from that context. This is first done "gracefully" by
> using preemption to kick the active context off the engine, and then
> forcefully by resetting the engine if it is active. If we are unable to
> reset the engine to remove hostile userspace, we should not allow
> userspace to opt into using non-persistent contexts.
> 
> Fixes: a0e047156cde ("drm/i915/gem: Make context persistence optional")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>

Maybe worth noting that we might still ultimately end up at using
the sledge hammer called full GPU reset, in the rare cases when
engine reset fails. But it makes sense to avoid the situation
when it's guaranteed to be attempted.

Avoiding collateral damage is a worthy motive for the long
running compute cases.

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
