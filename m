Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B57DC990D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 09:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0270E6E0AB;
	Thu,  3 Oct 2019 07:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F8B86E0AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 07:35:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18702424-1500050 for multiple; Thu, 03 Oct 2019 08:35:25 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-22-chris@chris-wilson.co.uk>
 <87d2e408-0331-b1f9-e580-9df49fc0bab7@linux.intel.com>
In-Reply-To: <87d2e408-0331-b1f9-e580-9df49fc0bab7@linux.intel.com>
Message-ID: <157008812224.2173.14345071881718366689@skylake-alporthouse-com>
Date: Thu, 03 Oct 2019 08:35:22 +0100
Subject: Re: [Intel-gfx] [PATCH 21/27] drm/i915: Move context management
 under GEM
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yNiAxNDo1NzoyNCkKPiAKPiBPbiAyNS8w
OS8yMDE5IDExOjAxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiAgIHZvaWQgaTkxNV9nZW1fY29u
dGV4dF9yZWxlYXNlKHN0cnVjdCBrcmVmICpyZWYpCj4gPiAgIHsKPiA+ICAgICAgIHN0cnVjdCBp
OTE1X2dlbV9jb250ZXh0ICpjdHggPSBjb250YWluZXJfb2YocmVmLCB0eXBlb2YoKmN0eCksIHJl
Zik7Cj4gPiAtICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGN0eC0+aTkxNTsK
PiA+ICsgICAgIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0cyAqZ2MgPSAmY3R4LT5pOTE1LT5nZW0u
Y29udGV4dHM7Cj4gPiAgIAo+ID4gICAgICAgdHJhY2VfaTkxNV9jb250ZXh0X2ZyZWUoY3R4KTsK
PiA+IC0gICAgIGlmIChsbGlzdF9hZGQoJmN0eC0+ZnJlZV9saW5rLCAmaTkxNS0+Y29udGV4dHMu
ZnJlZV9saXN0KSkKPiA+IC0gICAgICAgICAgICAgcXVldWVfd29yayhpOTE1LT53cSwgJmk5MTUt
PmNvbnRleHRzLmZyZWVfd29yayk7Cj4gPiArICAgICBpZiAobGxpc3RfYWRkKCZjdHgtPmZyZWVf
bGluaywgJmdjLT5mcmVlX2xpc3QpKQo+ID4gKyAgICAgICAgICAgICBxdWV1ZV93b3JrKGN0eC0+
aTkxNS0+d3EsICZnYy0+ZnJlZV93b3JrKTsKPiAKPiBBdCBmaXJzdCBJIHRob3VnaHQgZ2Mgd2Fz
IHNvbWUgc29ydCBvZiBnYXJiYWdlIGNvbGxlY3Rpb24gbGlzdC4gQnV0IGl0IAo+IGlzIGEgR0VN
IGNvbnRleHRzIGxpc3QuIDopIFRoaXMgaHVuayBsb29rcyBjb21wbGV0ZWx5IGF2b2lkYWJsZSwg
SSBkb24ndCAKPiBzZWUgaXQgYnJpbmdzIG11Y2ggYmVuZWZpdCBvbiBiYWxhbmNlIHNpbmNlIGlu
IHR1cm4gaXQgYWRkcyBjdHgtPmk5MTUgCj4gdHdpY2UgLiBCdXQgYXMgeW91IHdpc2guLgoKU2lu
Y2UgaXQncyBub3QgdGFraW5nIHN0cnVjdF9tdXRleCBpdCBkb2Vzbid0IG5lZWQgaTkxNS0+d3Eg
YW55IG1vcmUsCmdvb2QgcG9pbnQuCgo+ID4gQEAgLTQ2NCwxMSArNDU0LDExIEBAIHN0YXRpYyB2
b2lkIF9fYXBwbHlfcHBndHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICp2bSkKPiA+
ICAgc3RhdGljIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKgo+ID4gICBfX3NldF9wcGd0dChz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LCBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2
bSkKPiA+ICAgewo+ID4gLSAgICAgc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqb2xkID0gY3R4
LT52bTsKPiA+ICsgICAgIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKm9sZCA9IHJjdV9kZXJl
ZmVyZW5jZV9wcm90ZWN0ZWQoY3R4LT52bSwgMSk7Cj4gPiAgIAo+ID4gICAgICAgR0VNX0JVR19P
TihvbGQgJiYgaTkxNV92bV9pc180bHZsKHZtKSAhPSBpOTE1X3ZtX2lzXzRsdmwob2xkKSk7Cj4g
PiAgIAo+ID4gLSAgICAgY3R4LT52bSA9IGk5MTVfdm1fb3Blbih2bSk7Cj4gPiArICAgICByY3Vf
YXNzaWduX3BvaW50ZXIoY3R4LT52bSwgaTkxNV92bV9vcGVuKHZtKSk7Cj4gCj4gQXJlIHVwZGF0
ZXJzIGhlcmUgc2VyaWFsaXplZD8gTG9zdCB0cmFjayBpZiBzdHJ1Y3QgbXV0ZXggaXMgc3RpbGwg
aGVsZCAKPiBpbiBzZXRfcHBndHQgYXQgdGhpcyBwb2ludCBpbiB0aGUgc2VyaWVzIG9yIG5vdC4u
IFRoaW5raW5nIG9mICJvbGQgPSAKPiByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkLi4iIGFuZCBo
ZXJlLgoKWWVzLCBjdHgtPm11dGV4OyBJIHdhcyBiZWluZyB2ZXJ5IGxhenkgaW4gbm90IG1hcmtp
bmcgaXQgdXA7IGVzcGVjaWFsbHkKaW4gdGhlIHNlbGZ0ZXN0cyB3aGVyZSBpdCB3YXMgc28gbXVj
aCBtb3JlIGRvbnRjYXJlLgoKPiA+IEBAIC02NTMsOCArNjMzLDggQEAgc3RhdGljIGludCBnZW1f
Y29udGV4dF9yZWdpc3RlcihzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+ID4gICAgICAg
aW50IHJldDsKPiA+ICAgCj4gPiAgICAgICBjdHgtPmZpbGVfcHJpdiA9IGZwcml2Owo+ID4gLSAg
ICAgaWYgKGN0eC0+dm0pCj4gPiAtICAgICAgICAgICAgIGN0eC0+dm0tPmZpbGUgPSBmcHJpdjsK
PiA+ICsgICAgIGlmIChyY3VfYWNjZXNzX3BvaW50ZXIoY3R4LT52bSkpCj4gPiArICAgICAgICAg
ICAgIHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoY3R4LT52bSwgdHJ1ZSktPmZpbGUgPSBmcHJp
djsKPiAKPiBIZXJlIHJjdSBhY2Nlc3NlcyBhcmUganVzdCB0byBzYXRpc2Z5IHNwYXJzZT8KClRv
dGFsIGV5ZXNvcmUsIHl1cC4gSSdtIHRoaW5raW5nIEkganVzdCBkZWNsYXJlIGN0eC0+dm0gdG8g
YmUgcHJvdGVjdGVkCmJ5IGN0eC0+bXV0ZXggYW5kIG1ha2UgaXQgc28uCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
