Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B8E2F1879
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 15:42:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30FE06E0E7;
	Mon, 11 Jan 2021 14:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 438 seconds by postgrey-1.36 at gabe;
 Fri, 08 Jan 2021 21:07:09 UTC
Received: from aposti.net (aposti.net [89.234.176.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B8B6E8D2;
 Fri,  8 Jan 2021 21:07:09 +0000 (UTC)
Date: Fri, 08 Jan 2021 20:20:43 +0000
From: Paul Cercueil <paul@crapouillou.net>
To: tglx@linutronix.de
Message-Id: <JUTMMQ.NNFWKIUV7UUJ1@crapouillou.net>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 11 Jan 2021 14:42:01 +0000
Subject: Re: [Intel-gfx] [patch V3 13/37] mips/mm/highmem: Switch to generic
 kmap atomic
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
Cc: juri.lelli@redhat.com, linux-aio@kvack.org, airlied@linux.ie,
 nouveau@lists.freedesktop.org, bigeasy@linutronix.de,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 bsegall@google.com, jcmvbkbc@gmail.com, ray.huang@amd.com, paulus@samba.org,
 kraxel@redhat.com, sparclinux@vger.kernel.org, deanbo422@gmail.com, hch@lst.de,
 paulmck@kernel.org, mpe@ellerman.id.au, x86@kernel.org, linux@armlinux.org.uk,
 linux-csky@vger.kernel.org, mingo@kernel.org, peterz@infradead.org,
 linux-graphics-maintainer@vmware.com, bskeggs@redhat.com, airlied@redhat.com,
 linux-snps-arc@lists.infradead.org, linux-mm@kvack.org, mgorman@suse.de,
 linux-xtensa@linux-xtensa.org, arnd@arndb.de, intel-gfx@lists.freedesktop.org,
 sroland@vmware.com, josef@toxicpanda.com, rostedt@goodmis.org,
 torvalds@linuxfoundation.org, green.hu@gmail.com, dsterba@suse.com,
 virtualization@lists.linux-foundation.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, chris@zankel.net, monstr@monstr.eu,
 tsbogend@alpha.franken.de, nickhu@andestech.com, clm@fb.com,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 christian.koenig@amd.com, bcrl@kvack.org, spice-devel@lists.freedesktop.org,
 vgupta@synopsys.com, linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 bristot@redhat.com, davem@davemloft.net, linux-btrfs@vger.kernel.org,
 viro@zeniv.linux.org.uk
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas,

5.11 does not boot anymore on Ingenic SoCs, I bisected it to this 
commit.

Any idea what could be happening?

Cheers,
-Paul


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
