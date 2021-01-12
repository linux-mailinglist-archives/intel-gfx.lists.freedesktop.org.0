Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D442F3BC1
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 22:14:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DE389B8F;
	Tue, 12 Jan 2021 21:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A29789B8F
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 21:13:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23578391-1500050 for multiple; Tue, 12 Jan 2021 21:13:49 +0000
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOwHpxPsTYmh6i=wbwacNj9CE6_oVaPYmEXdkBOzMoB0A@mail.gmail.com>
References: <20210112172246.11933-1-jani.nikula@intel.com>
 <CAM0jSHOwHpxPsTYmh6i=wbwacNj9CE6_oVaPYmEXdkBOzMoB0A@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@intel.com>,
 Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 12 Jan 2021 21:13:46 +0000
Message-ID: <161048602681.12706.9571720059335417370@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lmem: make intel_region_lmem_ops
 static
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2021-01-12 17:26:41)
> On Tue, 12 Jan 2021 at 17:23, Jani Nikula <jani.nikula@intel.com> wrote:
> >
> > There are no users outside of intel_region_lmem.c.
> >
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

I pushed this and its companion, and then applied Matthew's git mv.
Thanks,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
