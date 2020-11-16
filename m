Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 367332B41BD
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 11:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B1589DED;
	Mon, 16 Nov 2020 10:53:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B0C89DED
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 10:53:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23004009-1500050 for multiple; Mon, 16 Nov 2020 10:53:00 +0000
MIME-Version: 1.0
In-Reply-To: <160552214303.10586.7473931663804369779@jlahtine-mobl.ger.corp.intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-5-sean.z.huang@intel.com>
 <160552214303.10586.7473931663804369779@jlahtine-mobl.ger.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Mon, 16 Nov 2020 10:53:01 +0000
Message-ID: <160552398177.29277.12717240770735377320@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 05/27] drm/i915/pxp: Enable ioctl action to
 set the ring3 context
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

Quoting Joonas Lahtinen (2020-11-16 10:22:23)
> Quoting Huang, Sean Z (2020-11-15 23:07:53)
> > Enable one ioctl action to allow ring3 driver to set its ring3
> > context, so ring0 PXP can track the context id through this ring3
> > context list.
> 
> Overall the patches should refer to "userspace" not "ring3" to avoid
> confusion. "kernel" vs "user" not ring0 vs ring3.

There's also a missing chunk as to why this is not associated with the
existing user context, rather than introducing a new incomplete
encapsulation.

Overall, you've left in an awful lot of debug code and failed to follow
the coding style. A confusion as to whether your hw interactions is on
the GT or the whole device (it's GT).

Wrt the flow of the patches, robust setup and termination must be early
in the series, not tacked onto the end.

And you seem to confuse the kernel contexts as something special, you
use them as non-privileged, just like ordinary userspace. Do not use the
engine->kernel_context! You risk breaking (and judging from the waits
you do add, it is inevitable that you have broken) power management and
heartbeats.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
