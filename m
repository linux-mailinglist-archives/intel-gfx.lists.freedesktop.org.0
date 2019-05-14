Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1B11C7CD
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 13:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE2988304;
	Tue, 14 May 2019 11:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F3D88304
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 11:29:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 04:29:35 -0700
X-ExtLoop1: 1
Received: from lstanule-mobl1.ger.corp.intel.com (HELO [10.252.8.33])
 ([10.252.8.33])
 by orsmga007.jf.intel.com with ESMTP; 14 May 2019 04:29:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <ecd5750f-b1b7-ef90-05c0-ec7b1a4af78b@linux.intel.com>
 <20190514110450.8449-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5888c658-4b83-07c8-126f-7aeb342f6895@linux.intel.com>
Date: Tue, 14 May 2019 12:30:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514110450.8449-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v3] benchmarks/gem_wsim: Perturb
 static_vcs selection across clients
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE0LzA1LzIwMTkgMTI6MDQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBVc2UgdGhlIGNsaWVu
dCBpZCB0byBhbHRlcm5hdGUgdGhlIHN0YXRpY192Y3MgYmFsYW5jZXIgKC1iIGNvbnRleHQpCj4g
YWNyb3NzIGNsaWVudHMgd2l0aCB0aGUgcm91bmQgcm9iaW4gZmxhZyAoLVIpIC0gb3RoZXJ3aXNl
IGFsbCBjbGllbnRzCj4gZW5kIHVwIG9uIHZjczAgYW5kIGRvIG5vdCBtYXRjaCB0aGUgY29udGV4
dCBiYWxhbmNpbmcgZW1wbG95ZWQgYnkKPiBtZWRpYS1kcml2ZXIuCj4gCj4gdjI6IFB1dCBpdCBi
ZWhpbmQgdGhlIC1SIGZsYWcuCj4gdjM6IERvbid0IHNraXAgLVIgZmxhZyBmb3IgLWIgY29udGV4
dCBpbiBzY3JpcHRzL21lZGlhLWJlbmNoLnBsCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBiZW5jaG1hcmtzL2dlbV93c2ltLmMgIHwg
NiArKysrLS0KPiAgIHNjcmlwdHMvbWVkaWEtYmVuY2gucGwgfCAyICstCj4gICAyIGZpbGVzIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
YmVuY2htYXJrcy9nZW1fd3NpbS5jIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCj4gaW5kZXggYWZi
OTY0NGRkLi40ODU2OGNlNDAgMTAwNjQ0Cj4gLS0tIGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jCj4g
KysrIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCj4gQEAgLTkzOSw3ICs5MzksNyBAQCBhbGxvY19z
dGVwX2JhdGNoKHN0cnVjdCB3b3JrbG9hZCAqd3JrLCBzdHJ1Y3Qgd19zdGVwICp3LCB1bnNpZ25l
ZCBpbnQgZmxhZ3MpCj4gICBzdGF0aWMgdm9pZAo+ICAgcHJlcGFyZV93b3JrbG9hZCh1bnNpZ25l
ZCBpbnQgaWQsIHN0cnVjdCB3b3JrbG9hZCAqd3JrLCB1bnNpZ25lZCBpbnQgZmxhZ3MpCj4gICB7
Cj4gLQl1bnNpZ25lZCBpbnQgY3R4X3ZjcyA9IDA7Cj4gKwl1bnNpZ25lZCBpbnQgY3R4X3ZjczsK
PiAgIAlpbnQgbWF4X2N0eCA9IC0xOwo+ICAgCXN0cnVjdCB3X3N0ZXAgKnc7Cj4gICAJaW50IGk7
Cj4gQEAgLTk0OCw4ICs5NDgsMTAgQEAgcHJlcGFyZV93b3JrbG9hZCh1bnNpZ25lZCBpbnQgaWQs
IHN0cnVjdCB3b3JrbG9hZCAqd3JrLCB1bnNpZ25lZCBpbnQgZmxhZ3MpCj4gICAJd3JrLT5wcm5n
ID0gcmFuZCgpOwo+ICAgCXdyay0+cnVuID0gdHJ1ZTsKPiAgIAo+ICsJY3R4X3ZjcyA9ICAwOwo+
ICAgCWlmIChmbGFncyAmIElOSVRWQ1NSUikKPiAtCQl3cmstPnZjc19yciA9IGlkICYgMTsKPiAr
CQljdHhfdmNzID0gaWQgJiAxOwo+ICsJd3JrLT52Y3NfcnIgPSBjdHhfdmNzOwo+ICAgCj4gICAJ
aWYgKGZsYWdzICYgR0xPQkFMX0JBTEFOQ0UpIHsKPiAgIAkJaW50IHJldCA9IHB0aHJlYWRfbXV0
ZXhfaW5pdCgmd3JrLT5tdXRleCwgTlVMTCk7Cj4gZGlmZiAtLWdpdCBhL3NjcmlwdHMvbWVkaWEt
YmVuY2gucGwgYi9zY3JpcHRzL21lZGlhLWJlbmNoLnBsCj4gaW5kZXggMDY2YjU0MmY5Li5mMWNk
NTlhMjUgMTAwNzU1Cj4gLS0tIGEvc2NyaXB0cy9tZWRpYS1iZW5jaC5wbAo+ICsrKyBiL3Njcmlw
dHMvbWVkaWEtYmVuY2gucGwKPiBAQCAtNTIsNyArNTIsNyBAQCBteSBAYmFsYW5jZXJzID0gKCAn
cnInLCAncmFuZCcsICdxZCcsICdxZHInLCAncWRhdmcnLCAncnQnLCAncnRyJywgJ3J0YXZnJywK
PiAgIAkJICAnY29udGV4dCcsICdidXN5JywgJ2J1c3ktYXZnJyApOwo+ICAgbXkgJWJhbF9za2lw
X0ggPSAoICdycicgPT4gMSwgJ3JhbmQnID0+IDEsICdjb250ZXh0JyA9PiAxLCAsICdidXN5JyA9
PiAxLAo+ICAgCQkgICAnYnVzeS1hdmcnID0+IDEgKTsKPiAtbXkgJWJhbF9za2lwX1IgPSAoICdj
b250ZXh0JyA9PiAxICk7Cj4gK215ICViYWxfc2tpcF9SID0gKCk7Cj4gICAKPiAgIG15IEB3b3Jr
bG9hZHMgPSAoCj4gICAJJ21lZGlhX2xvYWRfYmFsYW5jZV8xN2k3LndzaW0nLAo+IAoKVGhpcyBw
cm9iYWJseSBtZWFucyBJIHdhcyB0aGlua2luZyAtRyBjb3ZlcnMgdGhpcyBmb3IgLWIgY29udGV4
dCwgd2hpY2ggCml0IGRvZXMuIERpZmZlcmVuY2UgYmV0d2VlbiAtUiBhbmQgLUcgdGhlcmUgc2Vl
bXMgcHVyZWx5IGluIHdvcmRpbmcgCnNpbmNlIGNsaWVudHMgYXJlIGluaXRpYWxpemVkIHNlcXVl
bnRpYWxseSBhbmQgaW4gZGV0ZXJtaW5pc3RpYyBvcmRlci4gCkhtIEkgZ3Vlc3MgZm9yIGhldGVy
b2dlbmVvdXMgY2xpZW50cyB0aGV5IHdvdWxkIGJlIGRpZmZlcmVudC4gT2theSwgCm1ha2VzIHNl
bnNlIHRoZW4uCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
