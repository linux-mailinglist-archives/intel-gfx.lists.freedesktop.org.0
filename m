Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C307014EE7F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 15:32:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823BC6FB6D;
	Fri, 31 Jan 2020 14:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDEF16E9B4;
 Fri, 31 Jan 2020 14:32:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20073741-1500050 for multiple; Fri, 31 Jan 2020 14:32:23 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200131132037.23319-2-janusz.krzysztofik@linux.intel.com>
References: <20200131132037.23319-1-janusz.krzysztofik@linux.intel.com>
 <20200131132037.23319-2-janusz.krzysztofik@linux.intel.com>
Message-ID: <158048114147.2430.6882438649434461232@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 Jan 2020 14:32:21 +0000
Subject: Re: [Intel-gfx] [RFC PATCH 1/1] drm/i915: Never allow userptr into
 the new mapping types
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
Cc: igt-dev@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-01-31 13:20:37)
> Commit 4f2a572eda67 ("drm/i915/userptr: Never allow userptr into the
> mappable GGTT") made I915_GEM_MMAP_GTT IOCTLs to fail when atepmted
> on a userptr object in order to protect from a lockdep splat.  Later
> on, new mapping types were introduced by commit cc662126b413
> ("drm/i915: Introduce DRM_I915_GEM_MMAP_OFFSET").  Those new mapping
> types suffer from the same lockdep splat issue but they now succeed
> when tried on top of a userptr object.  Fix it.
> 
> While being at it, return -EINVAL which seems to better reflect the
> reason for the failure than -ENODEV.

No. It is not a user error, it's a failure to implement support for it,
so we parcel it off as an incompatible device.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
