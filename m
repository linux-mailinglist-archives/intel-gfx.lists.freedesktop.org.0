Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD972FFF4F
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 10:39:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3718A6E9DD;
	Fri, 22 Jan 2021 09:39:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0D96E9CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 09:39:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23668636-1500050 for multiple; Fri, 22 Jan 2021 09:39:08 +0000
MIME-Version: 1.0
In-Reply-To: <874kj9l3f5.fsf@intel.com>
References: <20210122091058.5145-1-chris@chris-wilson.co.uk>
 <874kj9l3f5.fsf@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 09:39:08 +0000
Message-ID: <161130834876.28599.11979482696006821769@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Restrict DRM_I915_DEBUG to
 developer builds
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2021-01-22 09:35:42)
> On Fri, 22 Jan 2021, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > Let's not encourage everybody to build i915's debug code, and certainly
> > not the build robots who need to scrutinise the production build. Since
> > CI will complain if the debug build is broken, having the other build
> > bots focus on the builds we don't cover ourselves should improve the
> > build coverage.
> 
> I don't disagree with this, although I wrote in another mail that I'm
> not sure DRM_I915_DEBUG should select DRM_I915_WERROR. I think they
> should be two separate things.

DRM_I915_DEBUG is the CI catch-all, and so the build we recommend
developers try at least once. But the original purpose of DRM_I915_DEBUG
was to be able to switch on features for CI without having to bug Tomi.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
