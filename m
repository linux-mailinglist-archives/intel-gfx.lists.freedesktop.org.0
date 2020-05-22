Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 073FB1DDD5E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 04:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330756E2C4;
	Fri, 22 May 2020 02:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC2086E2C4;
 Fri, 22 May 2020 02:47:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21254549-1500050 for multiple; Fri, 22 May 2020 03:47:00 +0100
MIME-Version: 1.0
In-Reply-To: <20200521233841.1279742-1-jhubbard@nvidia.com>
References: <20200521233841.1279742-1-jhubbard@nvidia.com>
To: Andrew Morton <akpm@linux-foundation.org>,
 John Hubbard <jhubbard@nvidia.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159011561851.32320.15372940900085926477@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 22 May 2020 03:46:58 +0100
Subject: Re: [Intel-gfx] [PATCH] mm/gup: fixup gup.c for "mm/gup: refactor
 and de-duplicate gup_fast() code"
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
Cc: Matthew Wilcox <willy@infradead.org>, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 linux-mm@kvack.org, Souptick Joarder <jrdr.linux@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting John Hubbard (2020-05-22 00:38:41)
> Include FOLL_FAST_ONLY in the list of flags to *not* WARN()
> on, in internal_get_user_pages_fast().
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: "Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Matthew Wilcox <willy@infradead.org>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Souptick Joarder <jrdr.linux@gmail.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> ---
> 
> Hi Andrew, Chris,
> 
> Andrew: This is a fixup that applies to today's (20200521) linux-next.
> In that tree, this fixes up:
> 
> commit dfb8dfe80808 ("mm/gup: refactor and de-duplicate gup_fast() code")
> 
> Chris: I'd like to request another CI run for the drm/i915 changes, so
> for that, would you prefer that I post a v2 of the series [1], or
> is it easier for you to just apply this patch here, on top of [2]?

If you post your series again with this patch included to intel-gfx, CI
will pick it up. Or I'll do that in the morning.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
