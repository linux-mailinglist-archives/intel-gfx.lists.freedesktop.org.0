Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C0B2A4223
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 11:33:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D1F6EC6C;
	Tue,  3 Nov 2020 10:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EE26EC6C;
 Tue,  3 Nov 2020 10:33:53 +0000 (UTC)
Message-Id: <20201103095858.734064977@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1604399629;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=GQtIeN+bNrXtdDJbIY1/lT5u2Qlmlecyg45ylimAqeo=;
 b=otNm1FLhC7ruMh7oNXQtNETNU6+54RFk+t2LyeEF9d9+kDoZ9Kh8ZPgA+UB8A6JQ1ZXrGj
 0TPeQl8iy37SQzf3hhxJ0YH8tjvvuOPaAqFoJKHafSPmEiutw0Ud/5TB6XtJVn4M9v5QlN
 Kc0YPCEkVxgY8QSHdaCi6xZgLgOgc1LgMVaGrZjI4AUGq0ZlUKuDX4Xk4y+i0m9xE3dk86
 7GNBZMVBc/q+vRf7Zxdqgcl3bL7dPvuY81X2pyGhr1m48UNO2c+I7V2+wunozMP8FhvNCm
 gkFktETWxncmi0cgpUqLzaSL8knV0VimchG0Urhi5o5DvILy9hDHjs2CmUtXqQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1604399629;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=GQtIeN+bNrXtdDJbIY1/lT5u2Qlmlecyg45ylimAqeo=;
 b=aDUoEgUsKRf0mAVHG33KZuw3tdfR+OUYkG1a4FnTBJVD3Vb06TvF7LUgRRezOsbA4xMida
 qFHqtJWvRi1kHPBw==
Date: Tue, 03 Nov 2020 10:27:33 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20201103092712.714480842@linutronix.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [patch V3 21/37] Documentation/io-mapping: Remove
 outdated blurb
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-aio@kvack.org,
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Ben Segall <bsegall@google.com>, Chris Mason <clm@fb.com>,
 Huang Rui <ray.huang@amd.com>, Paul Mackerras <paulus@samba.org>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Bristot de Oliveira <bristot@redhat.com>, sparclinux@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Paul McKenney <paulmck@kernel.org>, Max Filippov <jcmvbkbc@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@kernel.org>, David Airlie <airlied@linux.ie>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Mel Gorman <mgorman@suse.de>, nouveau@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>, linux-snps-arc@lists.infradead.org,
 Ben Skeggs <bskeggs@redhat.com>, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org,
 Roland Scheidegger <sroland@vmware.com>, Josef Bacik <josef@toxicpanda.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, spice-devel@lists.freedesktop.org,
 David Sterba <dsterba@suse.com>, Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nick Hu <nickhu@andestech.com>, linux-mm@kvack.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-mips@vger.kernel.org,
 Christian Koenig <christian.koenig@amd.com>, Benjamin LaHaise <bcrl@kvack.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org, Greentime Hu <green.hu@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implementation details in the documentation are outdated and not really
helpful. Remove them.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
V3: New patch
---
 Documentation/driver-api/io-mapping.rst |   22 ----------------------
 1 file changed, 22 deletions(-)

--- a/Documentation/driver-api/io-mapping.rst
+++ b/Documentation/driver-api/io-mapping.rst
@@ -73,25 +73,3 @@ for pages mapped with io_mapping_map_wc.
 At driver close time, the io_mapping object must be freed::
 
 	void io_mapping_free(struct io_mapping *mapping)
-
-Current Implementation
-======================
-
-The initial implementation of these functions uses existing mapping
-mechanisms and so provides only an abstraction layer and no new
-functionality.
-
-On 64-bit processors, io_mapping_create_wc calls ioremap_wc for the whole
-range, creating a permanent kernel-visible mapping to the resource. The
-map_atomic and map functions add the requested offset to the base of the
-virtual address returned by ioremap_wc.
-
-On 32-bit processors with HIGHMEM defined, io_mapping_map_atomic_wc uses
-kmap_atomic_pfn to map the specified page in an atomic fashion;
-kmap_atomic_pfn isn't really supposed to be used with device pages, but it
-provides an efficient mapping for this usage.
-
-On 32-bit processors without HIGHMEM defined, io_mapping_map_atomic_wc and
-io_mapping_map_wc both use ioremap_wc, a terribly inefficient function which
-performs an IPI to inform all processors about the new mapping. This results
-in a significant performance penalty.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
