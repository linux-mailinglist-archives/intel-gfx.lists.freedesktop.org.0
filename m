Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5171623ED06
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 14:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A96766E0ED;
	Fri,  7 Aug 2020 12:00:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A8346E0ED
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 12:00:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22060540-1500050 for multiple; Fri, 07 Aug 2020 13:00:07 +0100
MIME-Version: 1.0
In-Reply-To: <20200807115633.16328-1-gaurav.k.singh@intel.com>
References: <20200807115633.16328-1-gaurav.k.singh@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Gaurav K Singh <gaurav.k.singh@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 07 Aug 2020 13:00:06 +0100
Message-ID: <159680160634.9674.17164057449268997767@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] i915/gem: Force HW tracking to exit PSR
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

Quoting Gaurav K Singh (2020-08-07 12:56:33)
> Instead of calling i915_gem_object_invalidate_frontbuffer(),
> call i915_gem_object_flush_frontbuffer() which will eventually
> call psr_force_hw_tracking_exit(). This will force HW tracking
> to exit PSR instead of disabling and re-enabling.

set-domain is before the frontbuffer is dirtied. This is meant to be
followed by either sw_finish (primarily for direct CPU access to the
frontbuffer) or the more modern approach of marking the framebuffer
as dirty (DRM_IOCTL_MODE_DIRTYFB).

If you following the API, then we have a problem. But it sounds like
it could be circumventing an important step.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
