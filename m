Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7837B2B4243
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 12:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DBF89D9A;
	Mon, 16 Nov 2020 11:10:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24EEF89D9A
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 11:10:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23004241-1500050 for multiple; Mon, 16 Nov 2020 11:10:02 +0000
MIME-Version: 1.0
In-Reply-To: <160552278752.10586.16763655350466197410@jlahtine-mobl.ger.corp.intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-7-sean.z.huang@intel.com>
 <160552278752.10586.16763655350466197410@jlahtine-mobl.ger.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Mon, 16 Nov 2020 11:10:04 +0000
Message-ID: <160552500432.29277.12450551659374055938@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 07/27] drm/i915/pxp: Add PXP-related
 registers into allowlist
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

Quoting Joonas Lahtinen (2020-11-16 10:33:07)
> Quoting Huang, Sean Z (2020-11-15 23:07:55)
> > Add several PXP-related reg into allowlist to allow
> > ring3 driver to read the those register values.
> 
> The individual registers need to be spelled out and their usage on the
> UMD side needs to be documented.

It's a huge block of registers that we need to manually verify for
mistakes. It also does not bode well for the userspace design as probing
so many through a single ioctl is going to be ratelimiting, nor why do
they need to check a entire kilobyte register file. Hence why the
userspace portion is essential to justify this as being the preferred
design.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
