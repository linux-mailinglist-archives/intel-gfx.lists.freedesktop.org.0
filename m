Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 701692B18A2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 10:49:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786796E45C;
	Fri, 13 Nov 2020 09:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC0B6E45C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 09:49:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22980523-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 09:49:37 +0000
MIME-Version: 1.0
In-Reply-To: <20201113094128.8740-29-chris@chris-wilson.co.uk>
References: <20201113094128.8740-1-chris@chris-wilson.co.uk>
 <20201113094128.8740-29-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
Cc: 
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 09:49:36 +0000
Message-ID: <160526097604.29612.6671195155628421376@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 29/33] drm/i915/gt: Track timeline GGTT
 offset separately from subpage offset
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

Quoting Chris Wilson (2020-11-13 09:41:24)
> Currently we know that the timeline status page is at most a page in
> size, and so we can preserve the lower 12bits of the offset when
> relocating the status page in the GGTT. If we want to use a larger
> object, such as the context state, we may not necessarily use a position
> within the first page and so need more than 12b.

Hmm, the ppHWSP is in the first page of the context state, but
previously we have allocated pages before the context image for private
use that would offset the ppHWSP over the 12b boundary.

Currently we are allocating pages after the context image for private
use (e.g. indirect context restores), maybe that trend will continue?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
