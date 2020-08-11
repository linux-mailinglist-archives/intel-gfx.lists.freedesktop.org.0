Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7C4241800
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 10:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E3846E1A2;
	Tue, 11 Aug 2020 08:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F4416E1A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 08:10:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22092237-1500050 for multiple; Tue, 11 Aug 2020 09:10:47 +0100
MIME-Version: 1.0
In-Reply-To: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 11 Aug 2020 09:10:47 +0100
Message-ID: <159713344709.2955.7576706470706312487@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 00/24] drm/i915: Correct the locking
 hierarchy in gem.
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

Quoting Maarten Lankhorst (2020-08-10 11:30:39)
> First start with a few reverts, to get to a good starting base for this
> series:
> - Async gpu relocations are not the way to go, for new platforms we will
>   disable gpu relocations altogether.
> - We also need the relocation slowpath (EFAULT handling) back.
> - The eb_vma no longer needs to be refcounted, with the next
>   patch that removes all vma's at a single place only.
> 
> Some igt tests will be broken, because they rely on certain behavior of
> relocations, mostly that they are taken without any ww locks, or the tests
> wiil fail.

This is patently false.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
