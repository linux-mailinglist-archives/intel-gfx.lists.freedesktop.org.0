Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6324D27BF40
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 10:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D27B689D46;
	Tue, 29 Sep 2020 08:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B676789D46
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 08:23:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22564106-1500050 for multiple; Tue, 29 Sep 2020 09:23:37 +0100
MIME-Version: 1.0
In-Reply-To: <160136751431.9258.5367116987368823201@jlahtine-mobl.ger.corp.intel.com>
References: <CAOMV6SUP1=U3bqO=+f_HrnTYpaLLwvZY4muCdW-ixQU2M10_WQ@mail.gmail.com>
 <160136751431.9258.5367116987368823201@jlahtine-mobl.ger.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tony Fischetti <tony.fischetti@gmail.com>, airlied@linux.ie,
 intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 linux-kernel@vger.kernel.org, peterx@redhat.com, rodrigo.vivi@intel.com
Date: Tue, 29 Sep 2020 09:23:41 +0100
Message-ID: <160136782105.20502.13725312236043545047@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] REGRESSION: in intel video driver following
 introduction of mm_struct.has_pinned
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

Quoting Joonas Lahtinen (2020-09-29 09:18:34)
> (+ intel-gfx for being i915 related)
> (+ Chris who has looked into the issue)
> 
> Hi,
> 
> Thanks for reporting!

Fixed in commit a4d63c3732f1a0c91abcf5b7f32b4ef7dcd82025
Author: Jason A. Donenfeld <Jason@zx2c4.com>
Date:   Mon Sep 28 12:35:07 2020 +0200

    mm: do not rely on mm == current->mm in __get_user_pages_locked
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
