Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7DC1C2F82
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 23:36:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C37389BAB;
	Sun,  3 May 2020 21:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7DE89BAB
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 21:36:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21101372-1500050 for multiple; Sun, 03 May 2020 22:36:54 +0100
MIME-Version: 1.0
In-Reply-To: <20200430154735.22434-9-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
 <20200430154735.22434-9-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158854181199.15829.41874323192593310@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sun, 03 May 2020 22:36:51 +0100
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/gen12: Flush LLC
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

Quoting Mika Kuoppala (2020-04-30 16:47:35)
> Request boundary is a global observation point for
> all operations. Thus flush the LLC too.
> 
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

This one always concerned me for being unbounded in cost: flush all the
LLC lines that might be framebuffer.

We don't mix scanout and LLC, so we've never felt concerned to enable
this flush. [It's definitely not gen12+!]

I would not enable this bit without good cause and verification it
doesn't cost anything for normal render paths.

Still we need to record this bit. For example, I might
suggest it is coupled into the flush-display path directly.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
