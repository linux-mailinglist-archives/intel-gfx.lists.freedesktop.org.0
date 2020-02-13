Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 228CA15CEB5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 00:39:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 888E06F899;
	Thu, 13 Feb 2020 23:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 728E46F899
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 23:39:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20217757-1500050 for multiple; Thu, 13 Feb 2020 23:39:02 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200212144058.5686-2-jani.nikula@intel.com>
References: <20200212144058.5686-1-jani.nikula@intel.com>
 <20200212144058.5686-2-jani.nikula@intel.com>
Message-ID: <158163713950.4660.5341490618839546150@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 13 Feb 2020 23:38:59 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: switch vlv_suspend to use
 intel uncore register accessors
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-02-12 14:40:58)
> Prefer intel_uncore_* over I915_READ, I915_WRITE, and POSTING_READ.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

A couple of older checkpatch errors that could be cleaned up (pure
whitespacing).

Both
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Half this code should be removed as we explicitly reset the registers on
resume. (And if we need to add a few special runtime-resume hooks, would
not be a bad thing). And the other half, probably should be removed with
a bit of extra work.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
