Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A391533FA
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 16:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D08E6E9BB;
	Wed,  5 Feb 2020 15:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028726E9BB
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 15:36:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20126085-1500050 for multiple; Wed, 05 Feb 2020 15:36:45 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200205095441.1769599-1-chris@chris-wilson.co.uk>
 <87r1z99juf.fsf@gaia.fi.intel.com>
In-Reply-To: <87r1z99juf.fsf@gaia.fi.intel.com>
Message-ID: <158091700248.3271.16799623907766506519@skylake-alporthouse-com>
Date: Wed, 05 Feb 2020 15:36:42 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Flush execution tasklets
 before checking request status
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

Quoting Mika Kuoppala (2020-02-05 14:42:16)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Rather than flushing the submission tasklets just before we sleep, flush
> > before we check the request status. Ideally this gives us a moment to
> > process the tasklets after sleeping just before we timeout.
> 
> Makes sense to check the possibly most recent state.
> 
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

I suppose I should mention a small counter argument is that by kicking
ksoftirqd before checking completed, we may add a small amount of
latency to the ready client.

A compromise is to kick before timeout?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
