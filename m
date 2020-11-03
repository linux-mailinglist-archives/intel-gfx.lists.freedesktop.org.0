Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E2B2A47CA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 15:16:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0428F6ECB2;
	Tue,  3 Nov 2020 14:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD106ECB2
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 14:16:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22881066-1500050 for multiple; Tue, 03 Nov 2020 14:16:03 +0000
MIME-Version: 1.0
In-Reply-To: <87361qfw3e.fsf@gaia.fi.intel.com>
References: <20201102221057.29626-1-chris@chris-wilson.co.uk>
 <20201102221057.29626-2-chris@chris-wilson.co.uk>
 <87361qfw3e.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 03 Nov 2020 14:16:00 +0000
Message-ID: <160441296035.21466.9227014206344926879@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Flush xcs before tgl
 breadcrumbs
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-11-03 12:44:53)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > In a simple test case that writes to scratch and then busy-waits for the
> > batch to be signaled, we observe that the signal is before the write is
> > posted. That is bad news.
> >
> > Splitting the flush + write_dword into two separate flush_dw prevents
> > the issue from being reproduced, we can presume the post-sync op is not
> > so post-sync.
> >
> 
> Only thing that is mildly surpricing is that first one doesnt
> need postop write.

The MI_FLUSH_DW is stalling, so the second will^W should wait for the
first to complete. (And we don't want to do the write from the first as
we observe that write is too early.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
