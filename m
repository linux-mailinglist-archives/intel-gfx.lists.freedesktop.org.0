Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9982263EA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 14:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E834C899F3;
	Wed, 22 May 2019 12:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AB1894E3;
 Wed, 22 May 2019 12:33:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16640585-1500050 for multiple; Wed, 22 May 2019 13:33:44 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <342496f5-e495-143f-e59e-51d63afe3376@linux.intel.com>
References: <20190522113712.23512-1-chris@chris-wilson.co.uk>
 <20190522113712.23512-10-chris@chris-wilson.co.uk>
 <342496f5-e495-143f-e59e-51d63afe3376@linux.intel.com>
Message-ID: <155852842334.23981.5795327475779406000@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 13:33:43 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 10/12] i915/gem_exec_balancer:
 Exercise bonded pairs
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMiAxMzoyNjo0MykKPiAKPiBPbiAyMi8w
NS8yMDE5IDEyOjM3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaGUgc3VibWl0LWZlbmNlICsg
bG9hZF9iYWxhbmNpbmcgYXBpcyBhbGxvdyBmb3IgdXMgdG8gZXhlY3V0ZSBhIG5hbWVkCj4gPiBw
YWlyIG9mIGVuZ2luZXMgaW4gcGFyYWxsZWw7IHRoYXQgdGhpcyBieSBzdWJtaXR0aW5nIGEgcmVx
dWVzdCB0byBvbmUKPiA+IGVuZ2luZSwgd2UgY2FuIHRoZW4gdXNlIHRoZSBnZW5lcmF0ZWQgc3Vi
bWl0LWZlbmNlIHRvIHN1Ym1pdCBhIHNlY29uZAo+ID4gcmVxdWVzdCB0byBhbm90aGVyIGVuZ2lu
ZSBhbmQgaGF2ZSBpdCBleGVjdXRlIGF0IHRoZSBzYW1lIHRpbWUuCj4gPiBGdXJ0aGVybW9yZSwg
Ynkgc3BlY2lmeWluZyBib25kZWQgcGFpcnMsIHdlIGNhbiBkaXJlY3QgdGhlIHZpcnR1YWwKPiA+
IGVuZ2luZSB0byB1c2UgYSBwYXJ0aWN1bGFyIGVuZ2luZSBpbiBwYXJhbGxlbCB0byB0aGUgZmly
c3QgcmVxdWVzdC4KPiA+IAo+ID4gdjI6IE1lYXN1cmUgbG9hZCBhY3Jvc3MgYWxsIGJvbmRlZCBz
aWJsaW5ncyB0byBjaGVjayB3ZSBkb24ndAo+ID4gbWlzcyBhbiBhY2NpZGVudGFsIGV4ZWN1dGlv
biBvbiBhbm90aGVyLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gICB0ZXN0cy9pOTE1L2dlbV9leGVjX2Jh
bGFuY2VyLmMgfCAyNzcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAyNjIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMgYi90ZXN0cy9pOTE1
L2dlbV9leGVjX2JhbGFuY2VyLmMKPiA+IGluZGV4IDQwYTI3MTljMC4uYzc2MTEzNDc2IDEwMDY0
NAo+ID4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxhbmNlci5jCj4gPiArKysgYi90ZXN0
cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMKPiA+IEBAIC05OCw5ICs5OCwzNSBAQCBsaXN0X2Vu
Z2luZXMoaW50IGk5MTUsIHVpbnQzMl90IGNsYXNzX21hc2ssIHVuc2lnbmVkIGludCAqb3V0KQo+
ID4gICAgICAgcmV0dXJuIGVuZ2luZXM7Cj4gPiAgIH0KPiA+ICAgCj4gPiArc3RhdGljIGludCBf
X3NldF9lbmdpbmVzKGludCBpOTE1LCB1aW50MzJfdCBjdHgsCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgIGNvbnN0IHN0cnVjdCBpOTE1X2VuZ2luZV9jbGFzc19pbnN0YW5jZSAqY2ksCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBjb3VudCkKPiA+ICt7Cj4gPiArICAg
ICBJOTE1X0RFRklORV9DT05URVhUX1BBUkFNX0VOR0lORVMoZW5naW5lcywgY291bnQpOwo+ID4g
KyAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtIHAgPSB7Cj4gPiArICAgICAg
ICAgICAgIC5jdHhfaWQgPSBjdHgsCj4gPiArICAgICAgICAgICAgIC5wYXJhbSA9IEk5MTVfQ09O
VEVYVF9QQVJBTV9FTkdJTkVTLAo+ID4gKyAgICAgICAgICAgICAuc2l6ZSA9IHNpemVvZihlbmdp
bmVzKSwKPiA+ICsgICAgICAgICAgICAgLnZhbHVlID0gdG9fdXNlcl9wb2ludGVyKCZlbmdpbmVz
KQo+ID4gKyAgICAgfTsKPiA+ICsKPiA+ICsgICAgIGVuZ2luZXMuZXh0ZW5zaW9ucyA9IDA7Cj4g
PiArICAgICBtZW1jcHkoZW5naW5lcy5lbmdpbmVzLCBjaSwgc2l6ZW9mKGVuZ2luZXMuZW5naW5l
cykpOwo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIF9fZ2VtX2NvbnRleHRfc2V0X3BhcmFtKGk5MTUs
ICZwKTsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIHZvaWQgc2V0X2VuZ2luZXMoaW50IGk5MTUs
IHVpbnQzMl90IGN0eCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaTkx
NV9lbmdpbmVfY2xhc3NfaW5zdGFuY2UgKmNpLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHVu
c2lnbmVkIGludCBjb3VudCkKPiA+ICt7Cj4gPiArICAgICBpZ3RfYXNzZXJ0X2VxKF9fc2V0X2Vu
Z2luZXMoaTkxNSwgY3R4LCBjaSwgY291bnQpLCAwKTsKPiA+ICt9Cj4gPiArCj4gPiAgIHN0YXRp
YyBpbnQgX19zZXRfbG9hZF9iYWxhbmNlcihpbnQgaTkxNSwgdWludDMyX3QgY3R4LAo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9lbmdpbmVfY2xhc3Nf
aW5zdGFuY2UgKmNpLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBp
bnQgY291bnQpCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBj
b3VudCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAqZXh0KQo+ID4gICB7
Cj4gPiAgICAgICBJOTE1X0RFRklORV9DT05URVhUX0VOR0lORVNfTE9BRF9CQUxBTkNFKGJhbGFu
Y2VyLCBjb3VudCk7Cj4gPiAgICAgICBJOTE1X0RFRklORV9DT05URVhUX1BBUkFNX0VOR0lORVMo
ZW5naW5lcywgMSArIGNvdW50KTsKPiA+IEBAIC0xMTMsNiArMTM5LDcgQEAgc3RhdGljIGludCBf
X3NldF9sb2FkX2JhbGFuY2VyKGludCBpOTE1LCB1aW50MzJfdCBjdHgsCj4gPiAgIAo+ID4gICAg
ICAgbWVtc2V0KCZiYWxhbmNlciwgMCwgc2l6ZW9mKGJhbGFuY2VyKSk7Cj4gPiAgICAgICBiYWxh
bmNlci5iYXNlLm5hbWUgPSBJOTE1X0NPTlRFWFRfRU5HSU5FU19FWFRfTE9BRF9CQUxBTkNFOwo+
ID4gKyAgICAgYmFsYW5jZXIuYmFzZS5uZXh0X2V4dGVuc2lvbiA9IHRvX3VzZXJfcG9pbnRlcihl
eHQpOwo+ID4gICAKPiA+ICAgICAgIGlndF9hc3NlcnQoY291bnQpOwo+ID4gICAgICAgYmFsYW5j
ZXIubnVtX3NpYmxpbmdzID0gY291bnQ7Cj4gPiBAQCAtMTMxLDkgKzE1OCwxMCBAQCBzdGF0aWMg
aW50IF9fc2V0X2xvYWRfYmFsYW5jZXIoaW50IGk5MTUsIHVpbnQzMl90IGN0eCwKPiA+ICAgCj4g
PiAgIHN0YXRpYyB2b2lkIHNldF9sb2FkX2JhbGFuY2VyKGludCBpOTE1LCB1aW50MzJfdCBjdHgs
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGk5MTVfZW5naW5l
X2NsYXNzX2luc3RhbmNlICpjaSwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNp
Z25lZCBpbnQgY291bnQpCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQg
aW50IGNvdW50LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKmV4dCkKPiA+
ICAgewo+ID4gLSAgICAgaWd0X2Fzc2VydF9lcShfX3NldF9sb2FkX2JhbGFuY2VyKGk5MTUsIGN0
eCwgY2ksIGNvdW50KSwgMCk7Cj4gPiArICAgICBpZ3RfYXNzZXJ0X2VxKF9fc2V0X2xvYWRfYmFs
YW5jZXIoaTkxNSwgY3R4LCBjaSwgY291bnQsIGV4dCksIDApOwo+ID4gICB9Cj4gPiAgIAo+ID4g
ICBzdGF0aWMgdWludDMyX3QgbG9hZF9iYWxhbmNlcl9jcmVhdGUoaW50IGk5MTUsCj4gPiBAQCAt
MTQzLDcgKzE3MSw3IEBAIHN0YXRpYyB1aW50MzJfdCBsb2FkX2JhbGFuY2VyX2NyZWF0ZShpbnQg
aTkxNSwKPiA+ICAgICAgIHVpbnQzMl90IGN0eDsKPiA+ICAgCj4gPiAgICAgICBjdHggPSBnZW1f
Y29udGV4dF9jcmVhdGUoaTkxNSk7Cj4gPiAtICAgICBzZXRfbG9hZF9iYWxhbmNlcihpOTE1LCBj
dHgsIGNpLCBjb3VudCk7Cj4gPiArICAgICBzZXRfbG9hZF9iYWxhbmNlcihpOTE1LCBjdHgsIGNp
LCBjb3VudCwgTlVMTCk7Cj4gPiAgIAo+ID4gICAgICAgcmV0dXJuIGN0eDsKPiA+ICAgfQo+ID4g
QEAgLTI4Nyw2ICszMTUsNzQgQEAgc3RhdGljIHZvaWQgaW52YWxpZF9iYWxhbmNlcihpbnQgaTkx
NSkKPiA+ICAgICAgIH0KPiA+ICAgfQo+ID4gICAKPiA+ICtzdGF0aWMgdm9pZCBpbnZhbGlkX2Jv
bmRzKGludCBpOTE1KQo+ID4gK3sKPiA+ICsgICAgIEk5MTVfREVGSU5FX0NPTlRFWFRfRU5HSU5F
U19CT05EKGJvbmRzWzE2XSwgMSk7Cj4gPiArICAgICBJOTE1X0RFRklORV9DT05URVhUX1BBUkFN
X0VOR0lORVMoZW5naW5lcywgMSk7Cj4gPiArICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRl
eHRfcGFyYW0gcCA9IHsKPiA+ICsgICAgICAgICAgICAgLmN0eF9pZCA9IGdlbV9jb250ZXh0X2Ny
ZWF0ZShpOTE1KSwKPiA+ICsgICAgICAgICAgICAgLnBhcmFtID0gSTkxNV9DT05URVhUX1BBUkFN
X0VOR0lORVMsCj4gPiArICAgICAgICAgICAgIC52YWx1ZSA9IHRvX3VzZXJfcG9pbnRlcigmZW5n
aW5lcyksCj4gPiArICAgICAgICAgICAgIC5zaXplID0gc2l6ZW9mKGVuZ2luZXMpLAo+ID4gKyAg
ICAgfTsKPiA+ICsgICAgIHVpbnQzMl90IGhhbmRsZTsKPiA+ICsgICAgIHZvaWQgKnB0cjsKPiA+
ICsKPiA+ICsgICAgIG1lbXNldCgmZW5naW5lcywgMCwgc2l6ZW9mKGVuZ2luZXMpKTsKPiA+ICsg
ICAgIGdlbV9jb250ZXh0X3NldF9wYXJhbShpOTE1LCAmcCk7Cj4gPiArCj4gPiArICAgICBtZW1z
ZXQoYm9uZHMsIDAsIHNpemVvZihib25kcykpOwo+ID4gKyAgICAgZm9yIChpbnQgbiA9IDA7IG4g
PCBBUlJBWV9TSVpFKGJvbmRzKTsgbisrKSB7Cj4gPiArICAgICAgICAgICAgIGJvbmRzW25dLmJh
c2UubmFtZSA9IEk5MTVfQ09OVEVYVF9FTkdJTkVTX0VYVF9CT05EOwo+ID4gKyAgICAgICAgICAg
ICBib25kc1tuXS5iYXNlLm5leHRfZXh0ZW5zaW9uID0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICBuID8gdG9fdXNlcl9wb2ludGVyKCZib25kc1tuIC0gMV0pIDogMDsKPiA+ICsgICAgICAgICAg
ICAgYm9uZHNbbl0ubnVtX2JvbmRzID0gMTsKPiA+ICsgICAgIH0KPiA+ICsgICAgIGVuZ2luZXMu
ZXh0ZW5zaW9ucyA9IHRvX3VzZXJfcG9pbnRlcigmYm9uZHMpOwo+ID4gKyAgICAgZ2VtX2NvbnRl
eHRfc2V0X3BhcmFtKGk5MTUsICZwKTsKPiA+ICsKPiA+ICsgICAgIGJvbmRzWzBdLmJhc2UubmV4
dF9leHRlbnNpb24gPSAtMXVsbDsKPiA+ICsgICAgIGlndF9hc3NlcnRfZXEoX19nZW1fY29udGV4
dF9zZXRfcGFyYW0oaTkxNSwgJnApLCAtRUZBVUxUKTsKPiA+ICsKPiA+ICsgICAgIGJvbmRzWzBd
LmJhc2UubmV4dF9leHRlbnNpb24gPSB0b191c2VyX3BvaW50ZXIoJmJvbmRzWzBdKTsKPiA+ICsg
ICAgIGlndF9hc3NlcnRfZXEoX19nZW1fY29udGV4dF9zZXRfcGFyYW0oaTkxNSwgJnApLCAtRTJC
SUcpOwo+ID4gKwo+ID4gKyAgICAgZW5naW5lcy5leHRlbnNpb25zID0gdG9fdXNlcl9wb2ludGVy
KCZib25kc1sxXSk7Cj4gPiArICAgICBpZ3RfYXNzZXJ0X2VxKF9fZ2VtX2NvbnRleHRfc2V0X3Bh
cmFtKGk5MTUsICZwKSwgLUUyQklHKTsKPiA+ICsgICAgIGJvbmRzWzBdLmJhc2UubmV4dF9leHRl
bnNpb24gPSAwOwo+ID4gKyAgICAgZ2VtX2NvbnRleHRfc2V0X3BhcmFtKGk5MTUsICZwKTsKPiA+
ICsKPiA+ICsgICAgIGhhbmRsZSA9IGdlbV9jcmVhdGUoaTkxNSwgNDA5NiAqIDMpOwo+ID4gKyAg
ICAgcHRyID0gZ2VtX21tYXBfX2d0dChpOTE1LCBoYW5kbGUsIDQwOTYgKiAzLCBQUk9UX1dSSVRF
KTsKPiA+ICsgICAgIGdlbV9jbG9zZShpOTE1LCBoYW5kbGUpOwo+ID4gKwo+ID4gKyAgICAgbWVt
Y3B5KHB0ciArIDQwOTYsICZib25kc1swXSwgc2l6ZW9mKGJvbmRzWzBdKSk7Cj4gPiArICAgICBl
bmdpbmVzLmV4dGVuc2lvbnMgPSB0b191c2VyX3BvaW50ZXIocHRyKSArIDQwOTY7Cj4gPiArICAg
ICBnZW1fY29udGV4dF9zZXRfcGFyYW0oaTkxNSwgJnApOwo+ID4gKwo+ID4gKyAgICAgbWVtY3B5
KHB0ciwgJmJvbmRzWzBdLCBzaXplb2YoYm9uZHNbMF0pKTsKPiA+ICsgICAgIGJvbmRzWzBdLmJh
c2UubmV4dF9leHRlbnNpb24gPSB0b191c2VyX3BvaW50ZXIocHRyKTsKPiA+ICsgICAgIG1lbWNw
eShwdHIgKyA0MDk2LCAmYm9uZHNbMF0sIHNpemVvZihib25kc1swXSkpOwo+ID4gKyAgICAgZ2Vt
X2NvbnRleHRfc2V0X3BhcmFtKGk5MTUsICZwKTsKPiA+ICsKPiA+ICsgICAgIG11bm1hcChwdHIs
IDQwOTYpOwo+ID4gKyAgICAgaWd0X2Fzc2VydF9lcShfX2dlbV9jb250ZXh0X3NldF9wYXJhbShp
OTE1LCAmcCksIC1FRkFVTFQpOwo+ID4gKwo+ID4gKyAgICAgYm9uZHNbMF0uYmFzZS5uZXh0X2V4
dGVuc2lvbiA9IDA7Cj4gPiArICAgICBtZW1jcHkocHRyICsgODE5MiwgJmJvbmRzWzBdLCBzaXpl
b2YoYm9uZHNbMF0pKTsKPiA+ICsgICAgIGJvbmRzWzBdLmJhc2UubmV4dF9leHRlbnNpb24gPSB0
b191c2VyX3BvaW50ZXIocHRyKSArIDgxOTI7Cj4gPiArICAgICBtZW1jcHkocHRyICsgNDA5Niwg
JmJvbmRzWzBdLCBzaXplb2YoYm9uZHNbMF0pKTsKPiA+ICsgICAgIGdlbV9jb250ZXh0X3NldF9w
YXJhbShpOTE1LCAmcCk7Cj4gPiArCj4gPiArICAgICBtdW5tYXAocHRyICsgODE5MiwgNDA5Nik7
Cj4gPiArICAgICBpZ3RfYXNzZXJ0X2VxKF9fZ2VtX2NvbnRleHRfc2V0X3BhcmFtKGk5MTUsICZw
KSwgLUVGQVVMVCk7Cj4gPiArCj4gPiArICAgICBtdW5tYXAocHRyICsgNDA5NiwgNDA5Nik7Cj4g
PiArICAgICBpZ3RfYXNzZXJ0X2VxKF9fZ2VtX2NvbnRleHRfc2V0X3BhcmFtKGk5MTUsICZwKSwg
LUVGQVVMVCk7Cj4gPiArCj4gPiArICAgICBnZW1fY29udGV4dF9kZXN0cm95KGk5MTUsIHAuY3R4
X2lkKTsKPiA+ICt9Cj4gPiArCj4gPiAgIHN0YXRpYyB2b2lkIGtpY2tfa3RocmVhZHModm9pZCkK
PiA+ICAgewo+ID4gICAgICAgdXNsZWVwKDIwICogMTAwMCk7IC8qIDIwbXMgc2hvdWxkIGJlIGVu
b3VnaCBmb3Iga3NvZnRpcnFkISAqLwo+ID4gQEAgLTM0Niw2ICs0NDIsMzggQEAgc3RhdGljIGRv
dWJsZSBtZWFzdXJlX21pbl9sb2FkKGludCBwbXUsIHVuc2lnbmVkIGludCBudW0sIGludCBwZXJp
b2RfdXMpCj4gPiAgICAgICByZXR1cm4gbWluIC8gKGRvdWJsZSlkX3Q7Cj4gPiAgIH0KPiA+ICAg
Cj4gPiArc3RhdGljIHZvaWQgbWVhc3VyZV9hbGxfbG9hZChpbnQgcG11LCBkb3VibGUgKnYsIHVu
c2lnbmVkIGludCBudW0sIGludCBwZXJpb2RfdXMpCj4gPiArewo+ID4gKyAgICAgdWludDY0X3Qg
ZGF0YVsyICsgbnVtXTsKPiA+ICsgICAgIHVpbnQ2NF90IGRfdCwgZF92W251bV07Cj4gPiArCj4g
PiArICAgICBraWNrX2t0aHJlYWRzKCk7Cj4gPiArCj4gPiArICAgICBpZ3RfYXNzZXJ0X2VxKHJl
YWQocG11LCBkYXRhLCBzaXplb2YoZGF0YSkpLCBzaXplb2YoZGF0YSkpOwo+ID4gKyAgICAgZm9y
ICh1bnNpZ25lZCBpbnQgbiA9IDA7IG4gPCBudW07IG4rKykKPiA+ICsgICAgICAgICAgICAgZF92
W25dID0gLWRhdGFbMiArIG5dOwo+ID4gKyAgICAgZF90ID0gLWRhdGFbMV07Cj4gPiArCj4gPiAr
ICAgICB1c2xlZXAocGVyaW9kX3VzKTsKPiA+ICsKPiA+ICsgICAgIGlndF9hc3NlcnRfZXEocmVh
ZChwbXUsIGRhdGEsIHNpemVvZihkYXRhKSksIHNpemVvZihkYXRhKSk7Cj4gPiArCj4gPiArICAg
ICBkX3QgKz0gZGF0YVsxXTsKPiA+ICsgICAgIGZvciAodW5zaWduZWQgaW50IG4gPSAwOyBuIDwg
bnVtOyBuKyspIHsKPiA+ICsgICAgICAgICAgICAgZF92W25dICs9IGRhdGFbMiArIG5dOwo+ID4g
KyAgICAgICAgICAgICBpZ3RfZGVidWcoImVuZ2luZVslZF06ICUuMWYlJVxuIiwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgIG4sIGRfdltuXSAvIChkb3VibGUpZF90ICogMTAwKTsKPiA+ICsg
ICAgICAgICAgICAgdltuXSA9IGRfdltuXSAvIChkb3VibGUpZF90Owo+ID4gKyAgICAgfQo+ID4g
K30KPiA+ICsKPiA+ICtzdGF0aWMgaW50IGFkZF9wbXUoaW50IHBtdSwgY29uc3Qgc3RydWN0IGk5
MTVfZW5naW5lX2NsYXNzX2luc3RhbmNlICpjaSkKPiA+ICt7Cj4gPiArICAgICByZXR1cm4gcGVy
Zl9pOTE1X29wZW5fZ3JvdXAoSTkxNV9QTVVfRU5HSU5FX0JVU1koY2ktPmVuZ2luZV9jbGFzcywK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBjaS0+ZW5naW5lX2luc3RhbmNlKSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBwbXUpOwo+ID4gK30KPiA+ICsKPiA+ICAgc3RhdGljIHZvaWQgY2hlY2tfaW5kaXZpZHVh
bF9lbmdpbmUoaW50IGk5MTUsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dWludDMyX3QgY3R4LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0
IHN0cnVjdCBpOTE1X2VuZ2luZV9jbGFzc19pbnN0YW5jZSAqY2ksCj4gPiBAQCAtMzk0LDcgKzUy
Miw3IEBAIHN0YXRpYyB2b2lkIGluZGl2aWR1YWwoaW50IGk5MTUpCj4gPiAgICAgICAgICAgICAg
IGZvciAoaW50IHBhc3MgPSAwOyBwYXNzIDwgY291bnQ7IHBhc3MrKykgeyAvKiBhcHByb3guIGNv
dW50ISAqLwo+ID4gICAgICAgICAgICAgICAgICAgICAgIGlndF9hc3NlcnQoc2l6ZW9mKCpjaSkg
PT0gc2l6ZW9mKGludCkpOwo+ID4gICAgICAgICAgICAgICAgICAgICAgIGlndF9wZXJtdXRlX2Fy
cmF5KGNpLCBjb3VudCwgaWd0X2V4Y2hhbmdlX2ludCk7Cj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgc2V0X2xvYWRfYmFsYW5jZXIoaTkxNSwgY3R4LCBjaSwgY291bnQpOwo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIHNldF9sb2FkX2JhbGFuY2VyKGk5MTUsIGN0eCwgY2ksIGNvdW50LCBOVUxM
KTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBmb3IgKHVuc2lnbmVkIGludCBuID0gMDsgbiA8
IGNvdW50OyBuKyspCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjaGVja19pbmRp
dmlkdWFsX2VuZ2luZShpOTE1LCBjdHgsIGNpLCBuKTsKPiA+ICAgICAgICAgICAgICAgfQo+ID4g
QEAgLTQwNiw2ICs1MzQsMTIzIEBAIHN0YXRpYyB2b2lkIGluZGl2aWR1YWwoaW50IGk5MTUpCj4g
PiAgICAgICBnZW1fcXVpZXNjZW50X2dwdShpOTE1KTsKPiA+ICAgfQo+ID4gICAKPiA+ICtzdGF0
aWMgdm9pZCBib25kZWQoaW50IGk5MTUsIHVuc2lnbmVkIGludCBmbGFncykKPiA+ICsjZGVmaW5l
IENPUksgMHgxCj4gPiArewo+ID4gKyAgICAgSTkxNV9ERUZJTkVfQ09OVEVYVF9FTkdJTkVTX0JP
TkQoYm9uZHNbMTZdLCAxKTsKPiA+ICsgICAgIHN0cnVjdCBpOTE1X2VuZ2luZV9jbGFzc19pbnN0
YW5jZSAqbWFzdGVyX2VuZ2luZXM7Cj4gPiArICAgICB1aW50MzJfdCBtYXN0ZXI7Cj4gPiArCj4g
PiArICAgICAvKgo+ID4gKyAgICAgICogSTkxNV9DT05URVhUX1BBUkFNX0VOR0lORSBwcm92aWRl
cyBhbiBleHRlbnNpb24gdGhhdCBhbGxvd3MgdXMKPiA+ICsgICAgICAqIHRvIHNwZWNpZnkgd2hp
Y2ggZW5naW5lKHMpIHRvIHBhaXIgd2l0aCBhIHBhcmFsbGVsIChFWEVDX1NVQk1JVCkKPiA+ICsg
ICAgICAqIHJlcXVlc3Qgc3VibWl0dGVkIHRvIGFub3RoZXIgZW5naW5lLgo+ID4gKyAgICAgICov
Cj4gPiArCj4gPiArICAgICBtYXN0ZXIgPSBnZW1fcXVldWVfY3JlYXRlKGk5MTUpOwo+ID4gKwo+
ID4gKyAgICAgbWVtc2V0KGJvbmRzLCAwLCBzaXplb2YoYm9uZHMpKTsKPiA+ICsgICAgIGZvciAo
aW50IG4gPSAwOyBuIDwgQVJSQVlfU0laRShib25kcyk7IG4rKykgewo+ID4gKyAgICAgICAgICAg
ICBib25kc1tuXS5iYXNlLm5hbWUgPSBJOTE1X0NPTlRFWFRfRU5HSU5FU19FWFRfQk9ORDsKPiA+
ICsgICAgICAgICAgICAgYm9uZHNbbl0uYmFzZS5uZXh0X2V4dGVuc2lvbiA9Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgbiA/IHRvX3VzZXJfcG9pbnRlcigmYm9uZHNbbiAtIDFdKSA6IDA7Cj4g
PiArICAgICAgICAgICAgIGJvbmRzW25dLm51bV9ib25kcyA9IDE7Cj4gPiArICAgICB9Cj4gPiAr
Cj4gPiArICAgICBmb3IgKGludCBjbGFzcyA9IDA7IGNsYXNzIDwgMzI7IGNsYXNzKyspIHsKPiA+
ICsgICAgICAgICAgICAgc3RydWN0IGk5MTVfZW5naW5lX2NsYXNzX2luc3RhbmNlICpzaWJsaW5n
czsKPiA+ICsgICAgICAgICAgICAgdW5zaWduZWQgaW50IGNvdW50LCBsaW1pdDsKPiA+ICsgICAg
ICAgICAgICAgdWludDMyX3QgY3R4Owo+ID4gKyAgICAgICAgICAgICBpbnQgcG11WzE2XTsKPiA+
ICsgICAgICAgICAgICAgaW50IG47Cj4gPiArCj4gPiArICAgICAgICAgICAgIHNpYmxpbmdzID0g
bGlzdF9lbmdpbmVzKGk5MTUsIDF1IDw8IGNsYXNzLCAmY291bnQpOwo+ID4gKyAgICAgICAgICAg
ICBpZiAoIXNpYmxpbmdzKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4g
Kwo+ID4gKyAgICAgICAgICAgICBpZiAoY291bnQgPCAyKSB7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgZnJlZShzaWJsaW5ncyk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgY29udGludWU7
Cj4gPiArICAgICAgICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAgICAgICAgbWFzdGVyX2VuZ2lu
ZXMgPSBsaXN0X2VuZ2luZXMoaTkxNSwgfigxdSA8PCBjbGFzcyksICZsaW1pdCk7Cj4gPiArICAg
ICAgICAgICAgIHNldF9lbmdpbmVzKGk5MTUsIG1hc3RlciwgbWFzdGVyX2VuZ2luZXMsIGxpbWl0
KTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgbGltaXQgPSBtaW4oY291bnQsIGxpbWl0KTsKPiA+
ICsgICAgICAgICAgICAgaWd0X2Fzc2VydChsaW1pdCA8PSBBUlJBWV9TSVpFKGJvbmRzKSk7Cj4g
PiArICAgICAgICAgICAgIGZvciAobiA9IDA7IG4gPCBsaW1pdDsgbisrKSB7Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgYm9uZHNbbl0ubWFzdGVyID0gbWFzdGVyX2VuZ2luZXNbbl07Cj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgYm9uZHNbbl0uZW5naW5lc1swXSA9IHNpYmxpbmdzW25dOwo+
ID4gKyAgICAgICAgICAgICB9Cj4gPiArCj4gPiArICAgICAgICAgICAgIGN0eCA9IGdlbV9jb250
ZXh0X2Nsb25lKGk5MTUsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IG1hc3RlciwgSTkxNV9DT05URVhUX0NMT05FX1ZNLAo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBJOTE1X0NPTlRFWFRfQ1JFQVRFX0ZMQUdTX1NJTkdMRV9USU1FTElO
RSk7Cj4gPiArICAgICAgICAgICAgIHNldF9sb2FkX2JhbGFuY2VyKGk5MTUsIGN0eCwgc2libGlu
Z3MsIGNvdW50LCAmYm9uZHNbbGltaXQgLSAxXSk7Cj4gPiArCj4gPiArICAgICAgICAgICAgIHBt
dVswXSA9IC0xOwo+ID4gKyAgICAgICAgICAgICBmb3IgKG4gPSAwOyBuIDwgbGltaXQ7IG4rKykK
PiA+ICsgICAgICAgICAgICAgICAgICAgICBwbXVbbl0gPSBhZGRfcG11KHBtdVswXSwgJnNpYmxp
bmdzW25dKTsKPiAKPiBCdXQgc3RpbGwgbm8gY2hlY2tpbmcgdGhhdCB0aGUgam9iIHJhbiBvbiBt
YXN0ZXIuIElmIEkgYW0gZm9sbG93aW5nIAo+IGNvcnJlY3RseSB5b3UgY291bGQgZWFzaWx5IGhh
dmUgc29tZXRoaW5nIGxpa2U6Cj4gCj4gICAgcG11W25dID0gYWRkX3BtdShwbXVbMF0sICZtYXN0
ZXJfZW5naW5lc1tuXSk7Cj4gICAgcG11W2xpbWl0ICsgbl0gPSBhZGRfcG11KHBtdVswXSwgJnNp
YmxpbmdzW25dKTsKPiAKPiBBbmQgY2hlY2sgYm90aC4KCkkgdGhpbmsgaXQgaXMgcmVkdW5kYW50
LiBXZSBjaGVjayBlYXJsaWVyLCBhbmQgaGF2ZSBtdWNoIG1vcmUgcHJlY2lzZQpzZWxmdGVzdCBm
b3IgYm9uZGluZy4gVGhlIG9ubHkgd2F5IHdlIGNhbiBkcml2ZSB0aGlzIHN1Y2Nlc3NmdWxseSBp
cyBpZgppdCBiZWhhdmVzLCBhbmQgc28gaXQgc2F0aXNmaWVzIHRoZSByZXF1aXJlbWVudCBvZiBj
aGVja2luZyB0aGUgdUFCSS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
