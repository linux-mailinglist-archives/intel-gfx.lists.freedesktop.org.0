Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF89F382B91
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 13:57:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E836E931;
	Mon, 17 May 2021 11:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 377 seconds by postgrey-1.36 at gabe;
 Sun, 16 May 2021 16:12:45 UTC
Received: from depni-mx.sinp.msu.ru (depni-mx.sinp.msu.ru [213.131.7.21])
 by gabe.freedesktop.org (Postfix) with ESMTP id B46886E0AF;
 Sun, 16 May 2021 16:12:45 +0000 (UTC)
Received: from spider (ip-95-220-118-46.bb.netbynet.ru [95.220.118.46])
 by depni-mx.sinp.msu.ru (Postfix) with ESMTPSA id 9250C1BF457;
 Sun, 16 May 2021 19:07:24 +0300 (MSK)
From: Serge Belyshev <belyshev@depni.sinp.msu.ru>
To: Christoph Hellwig <hch@lst.de>
References: <20210326055505.1424432-1-hch@lst.de>
 <20210326055505.1424432-5-hch@lst.de>
Date: Sun, 16 May 2021 19:06:25 +0300
In-Reply-To: <20210326055505.1424432-5-hch@lst.de> (Christoph Hellwig's
 message of "Fri, 26 Mar 2021 06:55:05 +0100")
Message-ID: <87pmxqiry6.fsf@depni.sinp.msu.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.0.50 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 17 May 2021 11:57:02 +0000
Subject: Re: [Intel-gfx] [PATCH 4/4] i915: fix remap_io_sg to verify the
 pgprot
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 dri-devel@lists.freedesktop.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I have another problem with this patch since it landed in mainline. On
my m3-6Y30 skylake HD Graphics 515 (rev 07), it causes visual artifacts
that look like bunch of one pixel high horizontal streaks, seen most
often in firefox while scrolling or in menu controls.

Reverting this patch on top of current mainline fixes the problem.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
