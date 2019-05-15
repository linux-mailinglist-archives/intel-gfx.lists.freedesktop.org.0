Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 886F81FA4F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 21:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A097C89155;
	Wed, 15 May 2019 19:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9A389155;
 Wed, 15 May 2019 19:06:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16568889-1500050 for multiple; Wed, 15 May 2019 20:06:46 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <4793727f-54f1-9d2d-f971-83b2dc391847@linux.intel.com>
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
 <20190508100958.32637-5-chris@chris-wilson.co.uk>
 <4793727f-54f1-9d2d-f971-83b2dc391847@linux.intel.com>
Message-ID: <155794720594.32666.12286317145397799125@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 15 May 2019 20:06:45 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 05/16] i915/gem_ctx_create: Basic
 checks for constructor properties
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNCAxMzoyNzozOCkKPiAKPiBPbiAwOC8w
NS8yMDE5IDExOjA5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBDaGVjayB0aGF0IHRoZSBleHRl
bmRlZCBjcmVhdGUgaW50ZXJmYWNlIGFjY2VwdHMgc2V0cGFyYW0uCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4g
PiAgIHRlc3RzL2k5MTUvZ2VtX2N0eF9jcmVhdGUuYyB8IDIyNSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIxMyBpbnNlcnRpb25zKCsp
LCAxMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0
eF9jcmVhdGUuYyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9jcmVhdGUuYwo+ID4gaW5kZXggYTY2NDA3
MGRiLi45YjRmZGRiZTcgMTAwNjQ0Cj4gPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfY3JlYXRl
LmMKPiA+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9jcmVhdGUuYwo+ID4gQEAgLTMzLDYgKzMz
LDcgQEAKPiA+ICAgI2luY2x1ZGUgPHRpbWUuaD4KPiA+ICAgCj4gPiAgICNpbmNsdWRlICJpZ3Rf
cmFuZC5oIgo+ID4gKyNpbmNsdWRlICJzd19zeW5jLmgiCj4gPiAgIAo+ID4gICAjZGVmaW5lIExP
Q0FMX0k5MTVfRVhFQ19CU0RfU0hJRlQgICAgICAoMTMpCj4gPiAgICNkZWZpbmUgTE9DQUxfSTkx
NV9FWEVDX0JTRF9NQVNLICAgICAgICgzIDw8IExPQ0FMX0k5MTVfRVhFQ19CU0RfU0hJRlQpCj4g
PiBAQCAtNDUsMTIgKzQ2LDMzIEBAIHN0YXRpYyB1bnNpZ25lZCBhbGxfbmVuZ2luZTsKPiA+ICAg
c3RhdGljIHVuc2lnbmVkIHBwZ3R0X2VuZ2luZXNbMTZdOwo+ID4gICBzdGF0aWMgdW5zaWduZWQg
cHBndHRfbmVuZ2luZTsKPiA+ICAgCj4gPiAtc3RhdGljIGludCBfX2dlbV9jb250ZXh0X2NyZWF0
ZV9sb2NhbChpbnQgZmQsIHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGUgKmFyZykK
PiA+ICtzdGF0aWMgaW50IGNyZWF0ZV9pb2N0bChpbnQgZmQsIHN0cnVjdCBkcm1faTkxNV9nZW1f
Y29udGV4dF9jcmVhdGUgKmFyZykKPiA+ICAgewo+ID4gLSAgICAgaW50IHJldCA9IDA7Cj4gPiAt
ICAgICBpZiAoZHJtSW9jdGwoZmQsIERSTV9JT0NUTF9JOTE1X0dFTV9DT05URVhUX0NSRUFURSwg
YXJnKSkKPiA+IC0gICAgICAgICAgICAgcmV0ID0gLWVycm5vOwo+ID4gLSAgICAgcmV0dXJuIHJl
dDsKPiA+ICsgICAgIGludCBlcnI7Cj4gPiArCj4gPiArICAgICBlcnIgPSAwOwo+ID4gKyAgICAg
aWYgKGlndF9pb2N0bChmZCwgRFJNX0lPQ1RMX0k5MTVfR0VNX0NPTlRFWFRfQ1JFQVRFLCBhcmcp
KSB7Cj4gPiArICAgICAgICAgICAgIGVyciA9IC1lcnJubzsKPiA+ICsgICAgICAgICAgICAgaWd0
X2Fzc2VydChlcnIpOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgZXJybm8gPSAwOwo+ID4g
KyAgICAgcmV0dXJuIGVycjsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGludCBjcmVhdGVfZXh0
X2lvY3RsKGludCBpOTE1LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2V4dCAqYXJnKQo+ID4gK3sKPiA+ICsgICAgIGludCBl
cnI7Cj4gPiArCj4gPiArICAgICBlcnIgPSAwOwo+ID4gKyAgICAgaWYgKGlndF9pb2N0bChpOTE1
LCBEUk1fSU9DVExfSTkxNV9HRU1fQ09OVEVYVF9DUkVBVEVfRVhULCBhcmcpKSB7Cj4gPiArICAg
ICAgICAgICAgIGVyciA9IC1lcnJubzsKPiA+ICsgICAgICAgICAgICAgaWd0X2Fzc3VtZShlcnIp
Owo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgZXJybm8gPSAwOwo+ID4gKyAgICAgcmV0dXJu
IGVycjsKPiA+ICAgfQo+ID4gICAKPiA+ICAgc3RhdGljIGRvdWJsZSBlbGFwc2VkKGNvbnN0IHN0
cnVjdCB0aW1lc3BlYyAqc3RhcnQsCj4gPiBAQCAtMzA4LDYgKzMzMCwxODcgQEAgc3RhdGljIHZv
aWQgbWF4aW11bShpbnQgZmQsIGludCBuY3B1cywgdW5zaWduZWQgbW9kZSkKPiA+ICAgICAgIGZy
ZWUoY29udGV4dHMpOwo+ID4gICB9Cj4gPiAgIAo+ID4gK3N0YXRpYyB2b2lkIGJhc2ljX2V4dF9w
YXJhbShpbnQgaTkxNSkKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRl
eHRfY3JlYXRlX2V4dF9zZXRwYXJhbSBleHQgPSB7Cj4gPiArICAgICAgICAgICAgIHsgLm5hbWUg
PSBJOTE1X0NPTlRFWFRfQ1JFQVRFX0VYVF9TRVRQQVJBTSB9LAo+ID4gKyAgICAgfTsKPiA+ICsg
ICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGVfZXh0IGNyZWF0ZSA9IHsKPiA+
ICsgICAgICAgICAgICAgLmZsYWdzID0gSTkxNV9DT05URVhUX0NSRUFURV9GTEFHU19VU0VfRVhU
RU5TSU9OUwo+ID4gKyAgICAgfTsKPiA+ICsgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4
dF9wYXJhbSBnZXQ7Cj4gPiArCj4gPiArICAgICBpZ3RfcmVxdWlyZShjcmVhdGVfZXh0X2lvY3Rs
KGk5MTUsICZjcmVhdGUpID09IDApOwo+ID4gKyAgICAgZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1
LCBjcmVhdGUuY3R4X2lkKTsKPiA+ICsKPiA+ICsgICAgIGNyZWF0ZS5leHRlbnNpb25zID0gLTF1
bGw7Cj4gPiArICAgICBpZ3RfYXNzZXJ0X2VxKGNyZWF0ZV9leHRfaW9jdGwoaTkxNSwgJmNyZWF0
ZSksIC1FRkFVTFQpOwo+ID4gKwo+ID4gKyAgICAgY3JlYXRlLmV4dGVuc2lvbnMgPSB0b191c2Vy
X3BvaW50ZXIoJmV4dCk7Cj4gPiArICAgICBpZ3RfYXNzZXJ0X2VxKGNyZWF0ZV9leHRfaW9jdGwo
aTkxNSwgJmNyZWF0ZSksIC1FSU5WQUwpOwo+IAo+IEkgdGhpbmsgdGhpcyBpcyB0aGUgdW5rbm93
biBwYXJhbSwgcmlnaHQ/Cj4gCj4gTmVlZCBhbm90aGVyIC1FSU5WQUwgdGVzdCBmb3Igbm9uLXpl
cm8gZXh0LmN0eF9pZC4KCk5vLCB0aGlzIGlzIG5vbi16ZXJvIGN0eF9pZC4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
