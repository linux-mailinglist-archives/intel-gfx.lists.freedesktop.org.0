Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B119D11BF48
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:33:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE286EBF8;
	Wed, 11 Dec 2019 21:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236366EBF8
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:33:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19547394-1500050 for multiple; Wed, 11 Dec 2019 21:33:12 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157609925197.27099.7914911837320369934@skylake-alporthouse-com>
References: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
 <20191211211244.7831-2-daniele.ceraolospurio@intel.com>
 <157609925197.27099.7914911837320369934@skylake-alporthouse-com>
Message-ID: <157609999216.27099.10632108353946439815@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Dec 2019 21:33:12 +0000
Subject: Re: [Intel-gfx] [RFC 1/5] drm/i915: introduce logical_ring and
 lr_context naming
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

Quoting Chris Wilson (2019-12-11 21:20:52)
> Quoting Daniele Ceraolo Spurio (2019-12-11 21:12:40)
> > +static void lr_context_init_reg_state(u32 *reg_state,
> > +                                     const struct intel_context *ce,
> > +                                     const struct intel_engine_cs *engine,
> > +                                     const struct intel_ring *ring,
> > +                                     bool close);
> 
> lrc. lrc should just be the register offsets and default context image.

Fwiw, I also put the w/a batch buffers into intel_lrc.c as they seemed
HW/lrc specific as opposed to being specialised for submission --
although we may want to do that at some point.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
