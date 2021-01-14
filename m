Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A8F2F5E81
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 11:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851BC89C29;
	Thu, 14 Jan 2021 10:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB3FB89C29
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 10:18:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23592751-1500050 for multiple; Thu, 14 Jan 2021 10:18:56 +0000
MIME-Version: 1.0
In-Reply-To: <161061921709.19482.2488244988261947924@build.alporthouse.com>
References: <20210114092639.23762-1-chris@chris-wilson.co.uk>
 <20210114092639.23762-2-chris@chris-wilson.co.uk>
 <161061921709.19482.2488244988261947924@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 10:18:54 +0000
Message-ID: <161061953488.19482.15393401097833081668@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Exercise
 cross-process context isolation
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

Quoting Chris Wilson (2021-01-14 10:13:37)
> Quoting Chris Wilson (2021-01-14 09:26:39)
> > +       rq = record_registers(A, a, result[0], result[1], false, &sema);
> > +       if (IS_ERR(rq)) {
> > +               err = PTR_ERR(rq);
> > +               goto err_result1;
> > +       }
> > +
> > +       err = poison_registers(B, a, poison, false, &sema);
> 
> Hmm. Will want to add a synchronisation pointer before poisoning the
> registers, we want to make sure context A is active at the time.

Already waits for the poison in record_registers, between the first and
second reads!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
