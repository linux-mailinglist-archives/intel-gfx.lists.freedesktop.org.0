Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D84F630A367
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524D56E43B;
	Mon,  1 Feb 2021 08:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D47016E2C7;
 Mon,  1 Feb 2021 08:37:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23757522-1500050 for multiple; Mon, 01 Feb 2021 08:36:12 +0000
MIME-Version: 1.0
In-Reply-To: <871re5jiu3.fsf@intel.com>
References: <871re5jiu3.fsf@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@intel.com>, linux-kernel@vger.kernel.org
Date: Mon, 01 Feb 2021 08:36:12 +0000
Message-ID: <161216857247.30865.951745918507946908@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] v5.11-rc5 BUG kmalloc-1k (Not tainted): Redzone
 overwritten
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2021-01-28 13:23:48)
> 
> A number of our CI systems are hitting redzone overwritten errors after
> s2idle, with the errors introduced between v5.11-rc4 and v5.11-rc5. See
> snippet below, full logs for one affected machine at [1].
> 
> Known issue?

Fwiw, I think this should be fixed by

commit 08d60e5999540110576e7c1346d486220751b7f9
Author: John Ogness <john.ogness@linutronix.de>
Date:   Sun Jan 24 21:33:28 2021 +0106

    printk: fix string termination for record_print_text()

    Commit f0e386ee0c0b ("printk: fix buffer overflow potential for
    print_text()") added string termination in record_print_text().
    However it used the wrong base pointer for adding the terminator.
    This led to a 0-byte being written somewhere beyond the buffer.

    Use the correct base pointer when adding the terminator.

    Fixes: f0e386ee0c0b ("printk: fix buffer overflow potential for print_text()")
    Reported-by: Sven Schnelle <svens@linux.ibm.com>
    Signed-off-by: John Ogness <john.ogness@linutronix.de>
    Signed-off-by: Petr Mladek <pmladek@suse.com>
    Link: https://lore.kernel.org/r/20210124202728.4718-1-john.ogness@linutronix.de

din should be rolled forward, but there's yet another regression in rc6
breaking suspend on all machines.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
