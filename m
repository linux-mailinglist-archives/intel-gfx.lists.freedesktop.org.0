Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A20A2F6D4B
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 22:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C3089EB1;
	Thu, 14 Jan 2021 21:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A99D189EA3;
 Thu, 14 Jan 2021 21:35:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23600604-1500050 for multiple; Thu, 14 Jan 2021 21:35:55 +0000
MIME-Version: 1.0
In-Reply-To: <20210114163206.4a562d82@gandalf.local.home>
References: <20210114163206.4a562d82@gandalf.local.home>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 21:35:53 +0000
Message-ID: <161066015368.19482.10094410867880595092@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [BUG] on reboot: bisected to: drm/i915: Shut down
 displays gracefully on reboot
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
Cc: David Airlie <airlied@linux.ie>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Steven Rostedt (2021-01-14 21:32:06)
> On reboot, one of my test boxes now triggers the following warning:

057fe3535eb3 ("drm/i915: Disable RPM wakeref assertions during driver shutdown")
is included with the drm-intel-fixes PR.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
