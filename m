Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD2D2D7394
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 11:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08DF6ED29;
	Fri, 11 Dec 2020 10:13:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550376ED42;
 Fri, 11 Dec 2020 10:13:34 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1607681612;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4TDbx5/eRxAHfo/4EOFfTsBBr8/iJ4NkSA5alVnInbw=;
 b=Ebn4XFcCDWYTM7X6Ch/mHznY5CAClfBbnhfLrO3Y6Kuikr6oFUaWSYQxhfOCU5ekEgEuk5
 ABxuPFqFDpUr/6fqEOmv/vOsnXIUuOejIYPyy0GJ0t4RBjN90FMlPlJ+tVDpM1qv0p7R8a
 xeZwcfSm29wJ/oRRI9rOhGLtzHCBhA3bpzeRWeG0Z24sHj1GQq05/L9FR4mQ32JHOYHSXu
 dDKuIj780YnhAu3jYewZAvLFsgNKDUqY7qYYXiJp4nkUDKsOaT+FgTS0xQYjkM48kJqr48
 89TXlGkoZBhTjLzmOxl42qVBK3QR64G1yObP38Wf6bryGtmLISA8jiMWLoDDjQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1607681612;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4TDbx5/eRxAHfo/4EOFfTsBBr8/iJ4NkSA5alVnInbw=;
 b=xExbb1LasawAWe5q2U6DGt3Co7x6OFVa9wgrktZhoDZT1DZdHSUTeF92DjXx94ng108/hg
 9efMO3KmpdkXHQDQ==
To: =?utf-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>,
 boris.ostrovsky@oracle.com, LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <a4bce428-4420-6064-c7cc-7136a7544a52@suse.com>
References: <20201210192536.118432146@linutronix.de>
 <20201210194045.250321315@linutronix.de>
 <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
 <a4bce428-4420-6064-c7cc-7136a7544a52@suse.com>
Date: Fri, 11 Dec 2020 11:13:31 +0100
Message-ID: <874kksiras.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [patch 27/30] xen/events: Only force affinity mask
 for percpu interrupts
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Saeed Mahameed <saeedm@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Will Deacon <will@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-s390@vger.kernel.org,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Dave Jiang <dave.jiang@intel.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-pci@vger.kernel.org,
 xen-devel@lists.xenproject.org, Heiko Carstens <hca@linux.ibm.com>,
 Wambui Karuga <wambui.karugax@gmail.com>, Allen Hubbe <allenbh@gmail.com>,
 Rob Herring <robh@kernel.org>, David Airlie <airlied@linux.ie>,
 linux-gpio@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>,
 Jon Mason <jdmason@kudzu.us>, linux-ntb@googlegroups.com,
 intel-gfx@lists.freedesktop.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBEZWMgMTEgMjAyMCBhdCAwNzoxNywgSsO8cmdlbiBHcm/DnyB3cm90ZToKPiBPbiAx
MS4xMi4yMCAwMDoyMCwgYm9yaXMub3N0cm92c2t5QG9yYWNsZS5jb20gd3JvdGU6Cj4+IAo+PiBP
biAxMi8xMC8yMCAyOjI2IFBNLCBUaG9tYXMgR2xlaXhuZXIgd3JvdGU6Cj4+PiBBbGwgZXZlbnQg
Y2hhbm5lbCBzZXR1cHMgYmluZCB0aGUgaW50ZXJydXB0IG9uIENQVTAgb3IgdGhlIHRhcmdldCBD
UFUgZm9yCj4+PiBwZXJjcHUgaW50ZXJydXB0cyBhbmQgb3ZlcndyaXRlIHRoZSBhZmZpbml0eSBt
YXNrIHdpdGggdGhlIGNvcnJlc3BvbmRpbmcKPj4+IGNwdW1hc2suIFRoYXQgZG9lcyBub3QgbWFr
ZSBzZW5zZS4KPj4+Cj4+PiBUaGUgWEVOIGltcGxlbWVudGF0aW9uIG9mIGlycWNoaXA6OmlycV9z
ZXRfYWZmaW5pdHkoKSBhbHJlYWR5IHBpY2tzIGEKPj4+IHNpbmdsZSB0YXJnZXQgQ1BVIG91dCBv
ZiB0aGUgYWZmaW5pdHkgbWFzayBhbmQgdGhlIGFjdHVhbCB0YXJnZXQgaXMgc3RvcmVkCj4+PiBp
biB0aGUgZWZmZWN0aXZlIENQVSBtYXNrLCBzbyBkZXN0cm95aW5nIHRoZSB1c2VyIGNob3NlbiBh
ZmZpbml0eSBtYXNrCj4+PiB3aGljaCBtaWdodCBjb250YWluIG1vcmUgdGhhbiBvbmUgQ1BVIGlz
IHdyb25nLgo+Pj4KPj4+IENoYW5nZSB0aGUgaW1wbGVtZW50YXRpb24gc28gdGhhdCB0aGUgY2hh
bm5lbCBpcyBib3VuZCB0byBDUFUwIGF0IHRoZSBYRU4KPj4+IGxldmVsIGFuZCBsZWF2ZSB0aGUg
YWZmaW5pdHkgbWFzayBhbG9uZS4gQXQgc3RhcnR1cCBvZiB0aGUgaW50ZXJydXB0Cj4+PiBhZmZp
bml0eSB3aWxsIGJlIGFzc2lnbmVkIG91dCBvZiB0aGUgYWZmaW5pdHkgbWFzayBhbmQgdGhlIFhF
TiBiaW5kaW5nIHdpbGwKPj4+IGJlIHVwZGF0ZWQuCj4+IAo+PiAKPj4gSWYgdGhhdCdzIHRoZSBj
YXNlIHRoZW4gSSB3b25kZXIgd2hldGhlciB3ZSBuZWVkIHRoaXMgY2FsbCBhdCBhbGwgYW5kIGlu
c3RlYWQgYmluZCBhdCBzdGFydHVwIHRpbWUuCj4KPiBUaGlzIGJpbmRpbmcgdG8gY3B1MCB3YXMg
aW50cm9kdWNlZCB3aXRoIGNvbW1pdCA5NzI1M2VlZWI3OTJkNjFlZDIKPiBhbmQgSSBoYXZlIG5v
IHJlYXNvbiB0byBiZWxpZXZlIHRoZSB1bmRlcmx5aW5nIHByb2JsZW0gaGFzIGJlZW4KPiBlbGlt
aW5hdGVkLgoKICAgICJUaGUga2VybmVsLXNpZGUgVkNQVSBiaW5kaW5nIHdhcyBub3QgYmVpbmcg
Y29ycmVjdGx5IHNldCBmb3IgbmV3bHkKICAgICBhbGxvY2F0ZWQgb3IgYm91bmQgaW50ZXJkb21h
aW4gZXZlbnRzLiAgSW4gQVJNIGd1ZXN0cyB3aGVyZSAyLWxldmVsCiAgICAgZXZlbnRzIHdlcmUg
dXNlZCwgdGhpcyB3b3VsZCByZXN1bHQgaW4gbm8gaW50ZXJkb21haW4gZXZlbnRzIGJlaW5nCiAg
ICAgaGFuZGxlZCBiZWNhdXNlIHRoZSBrZXJuZWwtc2lkZSBWQ1BVIG1hc2tzIHdvdWxkIGFsbCBi
ZSBjbGVhci4KCiAgICAgeDg2IGd1ZXN0cyB3b3VsZCB3b3JrIGJlY2F1c2UgdGhlIGlycSBhZmZp
bml0eSB3YXMgc2V0IGR1cmluZyBpcnEKICAgICBzZXR1cCBhbmQgdGhpcyB3b3VsZCBzZXQgdGhl
IGNvcnJlY3Qga2VybmVsLXNpZGUgVkNQVSBiaW5kaW5nLiIKCkknbSBub3QgY29udmluY2VkIHRo
YXQgdGhpcyBpcyByZWFsbHkgY29ycmVjdGx5IGFuYWx5emVkIGJlY2F1c2UgYWZmaW5pdHkKc2V0
dGluZyBpcyBkb25lIGF0IGlycSBzdGFydHVwLgoKICAgICAgICAgICAgICAgIHN3aXRjaCAoX19p
cnFfc3RhcnR1cF9tYW5hZ2VkKGRlc2MsIGFmZiwgZm9yY2UpKSB7CgkgICAgICAgIGNhc2UgSVJR
X1NUQVJUVVBfTk9STUFMOgoJICAgICAgICAgICAgICAgIHJldCA9IF9faXJxX3N0YXJ0dXAoZGVz
Yyk7CiAgICAgICAgICAgICAgICAgICAgICAgIGlycV9zZXR1cF9hZmZpbml0eShkZXNjKTsKCQkJ
YnJlYWs7Cgp3aGljaCBpcyBjb21wbGV0ZWx5IGFyY2hpdGVjdHVyZSBhZ25vc3RpYy4gU28gd2h5
IHNob3VsZCB0aGlzIG1hZ2ljYWxseQp3b3JrIG9uIHg4NiBhbmQgbm90IG9uIEFSTSBpZiBib3Ro
IGFyZSB1c2luZyB0aGUgc2FtZSBYRU4gaXJxY2hpcCB3aXRoCnRoZSBzYW1lIGlycWNoaXAgY2Fs
bGJhY2tzLgoKVGhhbmtzLAoKICAgICAgICB0Z2x4CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
