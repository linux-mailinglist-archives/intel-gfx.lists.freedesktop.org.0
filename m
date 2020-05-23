Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 243301DF66F
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2020 11:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 119166EA45;
	Sat, 23 May 2020 09:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C256EA45;
 Sat, 23 May 2020 09:41:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21269533-1500050 for multiple; Sat, 23 May 2020 10:41:25 +0100
MIME-Version: 1.0
In-Reply-To: <20200522051931.54191-1-jhubbard@nvidia.com>
References: <20200522051931.54191-1-jhubbard@nvidia.com>
To: Andrew Morton <akpm@linux-foundation.org>,
 John Hubbard <jhubbard@nvidia.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159022688563.11139.3402294435382936623@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 23 May 2020 10:41:25 +0100
Subject: Re: [Intel-gfx] [PATCH v2 0/4] mm/gup, drm/i915: refactor gup_fast,
 convert to pin_user_pages()
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

Quoting John Hubbard (2020-05-22 06:19:27)
> The purpose of posting this series is to launch a test in the
> intel-gfx-ci tree. (The patches have already been merged into Andrew's
> linux-mm tree.)
> 
> This applies to today's linux.git (note the base-commit tag at the
> bottom).
> 
> Changes since V1:
> 
> * Fixed a bug in the refactoring patch: added FOLL_FAST_ONLY to the
>   list of gup_flags *not* to WARN() on. This lead to a failure in the
>   first intel-gfx-ci test run [1].
> 
> [1] https://lore.kernel.org/r/159008745422.32320.5724805750977048669@build.alporthouse.com

Ran this through our CI, warn and subsequent lockup were gone. That
lockup is worrying me now, but that doesn't seem to be an issue from
this series.

The i915 changes were simple enough, I would have computed the pin flags
just once (since the readonly bit is static, that would be interesting
if that was allowed to change mid gup :)
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
