Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 726A137BC1F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 13:57:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578716EB7E;
	Wed, 12 May 2021 11:57:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B3756EB7C
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 11:57:40 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id DD22967373; Wed, 12 May 2021 13:57:36 +0200 (CEST)
Date: Wed, 12 May 2021 13:57:36 +0200
From: Christoph Hellwig <hch@lst.de>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20210512115736.GA10444@lst.de>
References: <b6b61cf0-5874-f4c0-1fcc-4b3848451c31@redhat.com>
 <YJu4tzXmCJbKp7Fm@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YJu4tzXmCJbKp7Fm@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] 5.13 i915/PAT regression on Brasswell,
 adding nopat to the kernel commandline worksaround this
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
Cc: intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 12, 2021 at 01:15:03PM +0200, Peter Zijlstra wrote:
> IIRC it's because of 74ffa5a3e685 ("mm: add remap_pfn_range_notrack"),
> which added a sanity check to make sure expectations were met. It turns
> out they were not.
> 
> The bug is not new, the warning is. AFAIK the i915 team is aware, but
> other than that I've not followed.


The actual culprit is b12d691ea5e0 ("i915: fix remap_io_sg to verify the
pgprot"), but otherwise agreed.  Someone the i915 maintainers all seem
to be on vacation as the previous report did not manage to trigger any
kind of reply.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
