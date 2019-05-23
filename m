Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9397927A2F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 12:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AE6889D87;
	Thu, 23 May 2019 10:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BC8E89D7B;
 Thu, 23 May 2019 10:17:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16652549-1500050 for multiple; Thu, 23 May 2019 11:17:47 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87mujdfpp0.fsf@gaia.fi.intel.com>
References: <20190523094940.30195-1-chris@chris-wilson.co.uk>
 <87mujdfpp0.fsf@gaia.fi.intel.com>
Message-ID: <155860666685.28319.4153329643208081662@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 11:17:46 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] igt/gem_fence_thrash,
 gem_mmap_gtt: Don't let the device sleep
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTIzIDExOjA4OjQzKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaGVzZSB0ZXN0cyBh
cmUgbm90IGludGVuZGVkIHRvIGV4ZXJjaXNlIHJ1bnRpbWUgcG0sIGJ1dCB0aGUgZGV2aWNlCj4g
PiBnb2luZyB0byBzbGVlcCBpbiB0aGUgbWlkZGxlIG9mIHRoZXNlIHRlc3RzIGNhbiBzaWduaWZp
Y2FudGx5IHNsb3cgdGhlbQo+ID4gZG93biBhcyB0aGUgR1RUIG1tYXBwaW5nIGlzIHRvcm4gZG93
biBhbmQgbXVzdCBiZSByZWJ1aWx0LiBUaGlzIGNhbiBiZSBhCj4gPiBtYWpvciBudWlzYW5jZSBp
ZiB0aGUgZGV2aWNlIGF1dG9zdXNwZW5kcyBtYW55IHRpbWVzIGEgc2Vjb25kLgo+ID4KPiA+IFRo
ZXNlIHRlc3RzIGRpZmZlciBmcm9tIHR5cGljYWwgYXBwbGljYXRpb25zIGFzIHRoZXkgYXJlIG5v
dCBkb2luZyBhbnkKPiA+IHJlbmRlcmluZyBvciB1dGlsaXppbmcgdGhlIGRpc3BsYXkgd2hpY2gg
d291bGQgb3JkaW5hcmlseSBrZWVwIHRoZQo+ID4gZGV2aWNlIGF3YWtlLgo+ID4KPiA+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0t
Cj4gPiAgdGVzdHMvaTkxNS9nZW1fZmVuY2VfdGhyYXNoLmMgfCAxNyArKysrKysrKysrKysrKysr
Kwo+ID4gIHRlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMgICAgIHwgMTUgKysrKysrKysrKysrKyst
Cj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2ZlbmNlX3RocmFzaC5jIGIvdGVzdHMv
aTkxNS9nZW1fZmVuY2VfdGhyYXNoLmMKPiA+IGluZGV4IDJkN2ZiMmZmOC4uNzcwZTljYjk4IDEw
MDY0NAo+ID4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fZmVuY2VfdGhyYXNoLmMKPiA+ICsrKyBiL3Rl
c3RzL2k5MTUvZ2VtX2ZlbmNlX3RocmFzaC5jCj4gPiBAQCAtMjMyLDEwICsyMzIsMjcgQEAgc3Rh
dGljIGludCBydW5fdGVzdChpbnQgdGhyZWFkc19wZXJfZmVuY2UsIHZvaWQgKmYsIGludCB0aWxp
bmcsCj4gPiAgICAgICByZXR1cm4gMDsKPiA+ICB9Cj4gPiAgCj4gPiArc3RhdGljIGludCB3YWtl
cmVmX29wZW4oaW50IGRldmljZSkKPiA+ICt7Cj4gPiArICAgICBpbnQgZGlyLCBmZDsKPiA+ICsK
PiA+ICsgICAgIGRpciA9IGlndF9kZWJ1Z2ZzX2RpcihkZXZpY2UpOwo+ID4gKyAgICAgZmQgPSBv
cGVuYXQoZGlyLCAiaTkxNV93YWtlcmVmX3VzZXIiLCBPX1JET05MWSk7Cj4gCj4gSSB3YXMgc2Vl
a2luZyB0aGUgY29ycmVzcG9uZGluZyBkZWJ1Z2ZzIGVudHJ5LiBIb3dldmVyCj4gaXQgc2VlbXMg
Zm9yY2V3YWtlIHVzZXIgdGFrZXMgdGhlIHBtIHJlZiBhbmQgeW91IHdhbnQgdG8gcGlnZ3liYWNr
IG9uCj4gdGhhdC4KCkl0J3Mgb3V0cmlnaHQgY2hlYXRpbmcuIEJ1dCBpdCdzIG11Y2ggc2ltcGxl
ciB0aGFuIHRoZSBwYXRjaGVzIHRvIGFkZCBhbgphdXRvc3VzcGVuZCB0aW1lb3V0IGZvciBnZ3R0
IGFjY2Vzcy4gQW5kIHNob3VsZCBoZWxwIHNob3cgaWYgdGhpcyBpcyB0aGUKcHJvYmxlbS4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
