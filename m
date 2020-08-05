Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DA623CA7A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0BFD6E573;
	Wed,  5 Aug 2020 12:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA10389CBA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039459-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:21:54 +0100
Message-Id: <20200805122231.23313-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/37] Replace obj->mm.lock with
 reservation_ww_class
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Long story short, we need to manage evictions using dma_resv & dma_fence
tracking. The backing storage will then be managed using the ww_mutex
borrowed from (and shared via) obj->base.resv, rather than the current
obj->mm.lock.

Skipping over the breadcrumbs, the first step is to remove the final
crutches of struct_mutex from execbuf and to broaden the hold for the
dma-resv to guard not just publishing the dma-fences, but for the
duration of the execbuf submission (holding all objects and their
backing store from the point of acquisition to publishing of the final
GPU work, after which the guard is delegated to the dma-fences).

This is of course made complicated by our history. On top of the user's
objects, we also have the HW/kernel objects with their own lifetimes,
and a bunch of auxiliary objects used for working around unhappy HW and
for providing the legacy relocation mechanism. We add every auxiliary
object to the list of user objects required, and attempt to acquire them
en masse. Since all the objects can be known a priori, we can build a
list of those objects and pass that to a routine that can resolve the
-EDEADLK (and evictions). [To avoid relocations imposing a penalty on
sane userspace that avoids them, we do not touch any relocations until
necessary, at will point we have to unroll the state, and rebuild a new
list with more auxiliary buffers to accommodate the extra copy_from_user].
More examples are included as to how we can break down operations
involving multiple objects into an acquire phase prior to those
operations, keeping the -EDEADLK handling under control.

execbuf is the unique interface in that it deals with multiple user
and kernel buffers. After that, we have callers that in principle care
about accessing a single buffer, and so can be migrated over to a helper
that permits only holding one such buffer at a time. That enables us to
swap out obj->mm.lock for obj->base.resv->lock, and use lockdep to spot
illegal nesting, and to throw away the temporary pins by replacing them
with holding the ww_mutex for the duration instead.

What's changed? Some patch splitting and we need to pull in Matthew's
patch to map the page directories under the ww_mutex.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
