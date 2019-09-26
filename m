Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0A3BF78F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 19:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729B36EDAE;
	Thu, 26 Sep 2019 17:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADD256EDA8;
 Thu, 26 Sep 2019 17:27:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18630527-1500050 for multiple; Thu, 26 Sep 2019 18:26:15 +0100
MIME-Version: 1.0
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190926105644.16703-2-bigeasy@linutronix.de>
References: <20190926105644.16703-1-bigeasy@linutronix.de>
 <20190926105644.16703-2-bigeasy@linutronix.de>
Message-ID: <156951877225.26462.9548724455113655482@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 18:26:12 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Don't disable interrupts for
 intel_engine_breadcrumbs_irq()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: David Airlie <airlied@linux.ie>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <williams@redhat.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yICgyMDE5LTA5LTI2IDExOjU2OjQzKQo+
IFRoZSBmdW5jdGlvbiBpbnRlbF9lbmdpbmVfYnJlYWRjcnVtYnNfaXJxKCkgaXMgYWx3YXlzIGlu
dm9rZWQgZnJvbSBhbiBpbnRlcnJ1cHQKPiBoYW5kbGVyIGFuZCBmb3IgdGhhdCByZWFzb24gaXQg
aW52b2tlcyAoYXMgYW4gb3B0aW1pc2F0aW9uKSBvbmx5IHNwaW5fbG9jaygpCj4gZm9yIGxvY2tp
bmcgYXNzdW1pbmcgdGhhdCB0aGUgaW50ZXJydXB0cyBhcmUgYWxyZWFkeSBkaXNhYmxlZC4gVGhl
Cj4gZnVuY3Rpb24gaW50ZWxfZW5naW5lX3NpZ25hbF9icmVhZGNydW1icygpIGlzIHByb3ZpZGVk
IHRvIGRpc2FibGUKPiBpbnRlcnJ1cHRzIHdoaWxlIHRoZSBmb3JtZXIgZnVuY3Rpb24gaXMgaW52
b2tlZCBzbyB0aGF0IGFzc3VtcHRpb24gaXMKPiBhbHNvIHRydWUgZm9yIGNhbGxlcnMgZnJvbSBw
cmVlbXB0aWJsZSBjb250ZXh0Lgo+IAo+IE9uIFBSRUVNUFRfUlQgbG9jYWxfaXJxX2Rpc2FibGUo
KSByZWFsbHkgZGlzYWJsZXMgaW50ZXJydXB0cyBhbmQgdGhpcwo+IGZvcmJpZHMgdG8gaW52b2tl
IHNwaW5fbG9jaygpIHdoaWNoIGJlY29tZXMgYSBzbGVlcGluZyBzcGlubG9jay4KPiAKPiBUaGlz
IGlzIGFsc28gcHJvYmxlbWF0aWMgd2l0aCBgdGhyZWFkaXJxcycgaW4gY29uanVuY3Rpb24gd2l0
aAo+IGlycV93b3JrLiBXaXRoIGZvcmNlIHRocmVhZGluZyB0aGUgaW50ZXJydXB0IGhhbmRsZXIs
IHRoZSBoYW5kbGVyIGlzCj4gaW52b2tlZCB3aXRoIGRpc2FibGVkIEJIIGJ1dCB3aXRoIGludGVy
cnVwdHMgZW5hYmxlZC4gVGhpcyBpcyBva2F5IGFuZAo+IHRoZSBsb2NrIGl0c2VsZiBpcyBuZXZl
ciBhY3F1aXJlZCBpbiBJUlEgY29udGV4dC4gVGhpcyBjaGFuZ2VzIHdpdGgKPiBpcnFfd29yayAo
c2lnbmFsX2lycV93b3JrKCkpIHdoaWNoIF9zdGlsbF8gaW52b2tlcwo+IGludGVsX2VuZ2luZV9i
cmVhZGNydW1ic19pcnEoKSBmcm9tIElSUSBjb250ZXh0LiBMb2NrZGVwIHNob3VsZCBzZWUgdGhp
cwo+IGFuZCBjb21wbGFpbi4KPiAKPiBBY3F1aXJlIHRoZSBsb2NrcyBpbiBpbnRlbF9lbmdpbmVf
YnJlYWRjcnVtYnNfaXJxKCkgd2l0aCBfaXJxc2F2ZSgpCj4gc3VmZml4IGFuZCBsZXQgYWxsIGNh
bGxlcnMgaW52b2tlIGludGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEoKQo+IGRpcmVjdGx5IGlu
c3RlYWQgdXNpbmcgaW50ZWxfZW5naW5lX3NpZ25hbF9icmVhZGNydW1icygpLgo+IAo+IFJlcG9y
dGVkLWJ5OiBDbGFyayBXaWxsaWFtcyA8d2lsbGlhbXNAcmVkaGF0LmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yIDxiaWdlYXN5QGxpbnV0cm9uaXguZGU+CgpB
bGwgdGhvc2UgaXJxIHNhdmUvcmVzdG9yZSBsb29rIGFubm95aW5nLCBzdGlsbCB0aGUgYXJndW1l
bnQgaXMgdmFsaWQKUmV2aWV3ZWQ6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
