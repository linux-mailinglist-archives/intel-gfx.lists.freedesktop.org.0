Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2766B802FF
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Aug 2019 00:55:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1AD96E02E;
	Fri,  2 Aug 2019 22:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7415C6E0A2
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 22:54:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17829037-1500050 for multiple; Fri, 02 Aug 2019 23:54:55 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190802205134.303-1-stuart.summers@intel.com>
 <20190802205134.303-4-stuart.summers@intel.com>
 <156478132733.6598.547320138135011818@skylake-alporthouse-com>
 <1564786020.4037.1.camel@intel.com>
In-Reply-To: <1564786020.4037.1.camel@intel.com>
Message-ID: <156478649348.12110.10159115356763914574@skylake-alporthouse-com>
Date: Fri, 02 Aug 2019 23:54:53 +0100
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Use local variable for
 subslice_mask on HSW
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wMiAyMzo0NzowMCkKPiBPbiBGcmksIDIw
MTktMDgtMDIgYXQgMjI6MjggKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFF1b3Rpbmcg
U3R1YXJ0IFN1bW1lcnMgKDIwMTktMDgtMDIgMjE6NTE6MjcpCj4gPiA+IEluc3RlYWQgb2YgYXNz
dW1pbmcgYSBzaW5nbGUgc2xpY2Ugb24gSFNXIHdoZW4gZGVmaW5pbmcKPiA+ID4gc3Vic2xpY2Vz
IGZvciB0aGUgcGxhdGZvcm0sIHVzZSBhIGxvY2FsIHZhcmlhYmxlIHRvIHNldAo+ID4gPiB0aGUg
bWF4aW11bSBzdWJzbGljZXMgcGVyIHNsaWNlLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTog
U3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDExICsrKysrKy0t
LS0tCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5jCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2lu
Zm8uYwo+ID4gPiBpbmRleCA5YTc5ZDlkNTQ3YzUuLjJiODFjYzczMWZhMiAxMDA2NDQKPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwo+ID4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCj4gPiA+IEBAIC01NDEs
NiArNTQxLDcgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9zc2V1X2luZm9faW5pdChzdHJ1Y3QKPiA+
ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiA+IMKgewo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUgPSAmUlVOVElNRV9JTkZPKGRldl9wcml2
KS0+c3NldTsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiBmdXNlMTsKPiA+ID4gK8KgwqDCoMKg
wqDCoMKgdTggc3Vic2xpY2VfbWFzazsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGludCBzLCBzczsK
PiA+ID4gwqAKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoC8qCj4gPiA+IEBAIC01NTMsMTYgKzU1NCwx
NiBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVjdAo+ID4gPiBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAvKiBmYWxsIHRocm91Z2ggKi8KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgMToKPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzc2V1LT5zbGljZV9tYXNrID0gQklU
KDApOwo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3NldS0+c3Vic2xpY2Vf
bWFza1swXSA9IEJJVCgwKTsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN1
YnNsaWNlX21hc2sgPSBCSVQoMCk7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgYnJlYWs7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBjYXNlIDI6Cj4gPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgc3NldS0+c2xpY2VfbWFzayA9IEJJVCgwKTsKPiA+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNzZXUtPnN1YnNsaWNlX21hc2tbMF0gPSBCSVQo
MCkgfCBCSVQoMSk7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdWJzbGlj
ZV9tYXNrID0gQklUKDApIHwgQklUKDEpOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGJyZWFrOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgY2FzZSAzOgo+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNzZXUtPnNsaWNlX21hc2sgPSBCSVQoMCkgfCBCSVQo
MSk7Cj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzc2V1LT5zdWJzbGljZV9t
YXNrWzBdID0gQklUKDApIHwgQklUKDEpOwo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgc3NldS0+c3Vic2xpY2VfbWFza1sxXSA9IEJJVCgwKSB8IEJJVCgxKTsKPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN1YnNsaWNlX21hc2sgPSBCSVQoMCkgfCBCSVQo
MSk7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdWJzbGljZV9tYXNrID0g
QklUKDApIHwgQklUKDEpOwo+ID4gCj4gPiBUaGlzIGlzIGRlZmluaXRlbHkgbm90IGEgc2luZ2xl
IHNsaWNlLgo+IAo+IFRoYW5rcyBmb3IgdGhlIG5vdGUgQ2hyaXMuIFZlcnkgdHJ1ZSBhbmQgbXkg
Y29tbWl0IG1lc3NhZ2UgaXMKPiBtaXNsZWFkaW5nLiBEbyB5b3UgaGF2ZSBhbnkgaXNzdWUgd2l0
aCB0aGUgY29kZSBjaGFuZ2VzIEknbSBtYWtpbmcKPiBoZXJlPyBPciBzaW1wbHkgdGhlIGNvbW1p
dCBtZXNzYWdlPyBJJ2xsIGFkanVzdCB0aGUgY29tbWl0IG1lc3NhZ2UgaW4KPiB0aGUgbmV4dCBy
ZXZpc2lvbi4KClRoZSBkdXBsaWNhdGlvbiBsb29rcyB2ZXJ5IHdyb25nLCBqdXN0IHJlbW92ZSBv
bmUgb2YgdGhlbSBhbmQgdGhlIHJlYWRlcgppc24ndCBsZWZ0IHdvbmRlcmluZyB3aHk/Pz8gQXQg
dGhlIG1vbWVudCwgaXQgbWFrZXMgbWUgcXVlc3Rpb24gd2hldGhlcgp0aGVyZSBpcyBsb3NzIG9m
IGluZm9ybWF0aW9uIHdpdGggYW4gaW5jb21wbGV0ZSBzdWJzbGljZV9tYXNrW10uCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
