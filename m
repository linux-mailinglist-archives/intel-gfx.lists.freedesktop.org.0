Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 539FC242666
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 09:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44FEC6E05D;
	Wed, 12 Aug 2020 07:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E4BE6E05D
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 07:56:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22102596-1500050 for multiple; Wed, 12 Aug 2020 08:56:52 +0100
MIME-Version: 1.0
In-Reply-To: <20200810103103.303818-2-maarten.lankhorst@linux.intel.com>
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-2-maarten.lankhorst@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 12 Aug 2020 08:56:51 +0100
Message-ID: <159721901119.14054.13869387006512750607@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 01/24] Revert "drm/i915/gem: Async GPU
 relocations only"
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

Quoting Maarten Lankhorst (2020-08-10 11:30:40)
> This reverts commit 9e0f9464e2ab36b864359a59b0e9058fdef0ce47,
> and related commit 7ac2d2536dfa7 ("drm/i915/gem: Delete unused code").
> 
> Async GPU relocations are not the path forward, we want to remove
> GPU accelerated relocation support eventually when userspace is fixed
> to use VM_BIND, and this is the first step towards that. We will keep
> async gpu relocations around for now, until userspace is fixed.

As it stands you are exposing an attack vector with your code that
allows one user to create an arbitrary lock holdtime and to pass that
lock onto a high priority consumer forcing them to wait upon you.

You may keep on denying that, and also keep denying that you have been
shown the bug and how to avoid it.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
