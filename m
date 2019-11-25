Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA213108D1D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 12:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A3AF6E134;
	Mon, 25 Nov 2019 11:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAFF96E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 11:41:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19328672-1500050 for multiple; Mon, 25 Nov 2019 11:41:04 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191125105858.1718307-1-chris@chris-wilson.co.uk>
 <010efe40-171e-7935-859e-2e3f67582e5c@linux.intel.com>
In-Reply-To: <010efe40-171e-7935-859e-2e3f67582e5c@linux.intel.com>
Message-ID: <157468205838.7880.694854300443744896@skylake-alporthouse-com>
Date: Mon, 25 Nov 2019 11:40:58 +0000
Subject: Re: [Intel-gfx] [CI 1/3] drm/i915: Serialise with engine-pm around
 requests on the kernel_context
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNSAxMTozOToxNykKPiAKPiBPbiAyNS8x
MS8yMDE5IDEwOjU4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBcyB0aGUgZW5naW5lLT5rZXJu
ZWxfY29udGV4dCBpcyB1c2VkIHdpdGhpbiB0aGUgZW5naW5lLXBtIGJhcnJpZXIsIHdlCj4gPiBo
YXZlIHRvIGJlIGNhcmVmdWwgd2hlbiBlbWl0dGluZyByZXF1ZXN0cyBvdXRzaWRlIG9mIHRoZSBi
YXJyaWVyLCBhcyB0aGUKPiA+IHN0cmljdCB0aW1lbGluZSBsb2NraW5nIHJ1bGVzIGRvIG5vdCBh
cHBseS4gSW5zdGVhZCwgd2UgbXVzdCBlbnN1cmUgdGhlCj4gPiBlbmdpbmVfcGFyaygpIGNhbm5v
dCBiZSBlbnRlcmVkIGFzIHdlIGJ1aWxkIHRoZSByZXF1ZXN0LCB3aGljaCBpcwo+ID4gc2ltcGxl
c3QgYnkgdGFraW5nIGFuIGV4cGxpY2l0IGVuZ2luZS1wbSB3YWtlcmVmIGFyb3VuZCB0aGUgcmVx
dWVzdAo+ID4gY29uc3RydWN0aW9uLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAKPiBSZXZpZXdlZC1ieTogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoYW5rIHlvdSBmb3IgeW91ciBwYXRp
ZW5jZSBhbmQgaGVscC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
