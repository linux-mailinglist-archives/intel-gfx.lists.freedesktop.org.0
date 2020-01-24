Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77153148DF0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 19:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED6D72B6E;
	Fri, 24 Jan 2020 18:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF28672B6D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 18:43:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19999680-1500050 for multiple; Fri, 24 Jan 2020 18:43:11 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200120191817.50164-1-michal.wajdeczko@intel.com>
References: <20200120191817.50164-1-michal.wajdeczko@intel.com>
Message-ID: <157989139007.2524.3856688061847437895@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 Jan 2020 18:43:10 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Don't GEM_BUG_ON on corrupted
 H2G CTB
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

Quoting Michal Wajdeczko (2020-01-20 19:18:17)
> We should never BUG_ON on any corruption in CTB descriptor as
> data there can be also modified by the GuC. Instead we can
> use flag "is_in_error" to indicate that we will not process
> any further messages over this CTB (until reset).

Like you already did for ct_read(). I was confused over having deja vu.

> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
