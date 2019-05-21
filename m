Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B2C24A63
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 10:29:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7BBC89248;
	Tue, 21 May 2019 08:29:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F3E89248;
 Tue, 21 May 2019 08:29:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 01:29:56 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 21 May 2019 01:29:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
 <20190520144739.13111-13-tvrtko.ursulin@linux.intel.com>
 <155842645570.23981.6357853903674807345@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1afbbc99-6bff-c457-1c62-3649c4d1fd77@linux.intel.com>
Date: Tue, 21 May 2019 09:29:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155842645570.23981.6357853903674807345@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 12/27] gem_wsim: Engine map
 support
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIxLzA1LzIwMTkgMDk6MTQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTIwIDE1OjQ3OjI0KQo+PiBAQCAtOTk5LDMwICsxMDkyLDUzIEBA
IHByZXBhcmVfd29ya2xvYWQodW5zaWduZWQgaW50IGlkLCBzdHJ1Y3Qgd29ya2xvYWQgKndyaywg
dW5zaWduZWQgaW50IGZsYWdzKQo+PiAgICAgICAgICAvKgo+PiAgICAgICAgICAgKiBJZGVudGlm
eSBpZiBjb250ZXh0cyB0YXJnZXQgc3BlY2lmaWMgZW5naW5lIGluc3RhbmNlcyBhbmQgaWYgdGhl
eQo+PiAgICAgICAgICAgKiB3YW50IHRvIGJlIGJhbGFuY2VkLgo+PiArICAgICAgICAqCj4+ICsg
ICAgICAgICogVHJhbnNmZXIgb3ZlciBlbmdpbmUgbWFwIGNvbmZpZ3VyYXRpb24gZnJvbSB0aGUg
d29ya2xvYWQgc3RlcC4KPj4gICAgICAgICAgICovCj4+ICAgICAgICAgIGZvciAoaiA9IDA7IGog
PCB3cmstPm5yX2N0eHM7IGogKz0gMikgewo+PiAgICAgICAgICAgICAgICAgIGJvb2wgdGFyZ2V0
cyA9IGZhbHNlOwo+PiAgICAgICAgICAgICAgICAgIGJvb2wgYmFsYW5jZSA9IGZhbHNlOwo+PiAg
IAo+PiAgICAgICAgICAgICAgICAgIGZvciAoaSA9IDAsIHcgPSB3cmstPnN0ZXBzOyBpIDwgd3Jr
LT5ucl9zdGVwczsgaSsrLCB3KyspIHsKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgaWYgKHct
PnR5cGUgIT0gQkFUQ0gpCj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGlu
dWU7Cj4+IC0KPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGlmICh3LT5jb250ZXh0ICE9IChq
IC8gMikpCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+PiAg
IAo+PiAtICAgICAgICAgICAgICAgICAgICAgICBpZiAody0+ZW5naW5lID09IFZDUykKPj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBiYWxhbmNlID0gdHJ1ZTsKPj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgZWxzZQo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRh
cmdldHMgPSB0cnVlOwo+PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAody0+dHlwZSA9PSBC
QVRDSCkgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlmICh3LT5lbmdpbmUg
PT0gVkNTKQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmFsYW5j
ZSA9IHRydWU7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZWxzZQo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGFyZ2V0cyA9IHRydWU7Cj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIH0gZWxzZSBpZiAody0+dHlwZSA9PSBFTkdJTkVfTUFQKSB7
Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgd3JrLT5jdHhfbGlzdFtqXS5lbmdp
bmVfbWFwID0gdy0+ZW5naW5lX21hcDsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB3cmstPmN0eF9saXN0W2pdLmVuZ2luZV9tYXBfY291bnQgPQo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdy0+ZW5naW5lX21hcF9jb3VudDsKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgfQo+PiAgICAgICAgICAgICAgICAgIH0KPj4gICAKPj4gLSAgICAgICAg
ICAgICAgIGlmIChmbGFncyAmIEk5MTUpIHsKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgd3Jr
LT5jdHhfbGlzdFtqXS50YXJnZXRzX2luc3RhbmNlID0gdGFyZ2V0czsKPj4gKyAgICAgICAgICAg
ICAgIHdyay0+Y3R4X2xpc3Rbal0udGFyZ2V0c19pbnN0YW5jZSA9IHRhcmdldHM7Cj4+ICsgICAg
ICAgICAgICAgICBpZiAoZmxhZ3MgJiBJOTE1KQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
d3JrLT5jdHhfbGlzdFtqXS53YW50c19iYWxhbmNlID0gYmFsYW5jZTsKPj4gKyAgICAgICB9Cj4+
ICsKPj4gKyAgICAgICAvKgo+PiArICAgICAgICAqIEVuc3VyZSBWQ1MgaXMgbm90IGFsbG93ZWQg
d2l0aCBlbmdpbmUgbWFwIGNvbnRleHRzLgo+PiArICAgICAgICAqLwo+PiArICAgICAgIGZvciAo
aiA9IDA7IGogPCB3cmstPm5yX2N0eHM7IGogKz0gMikgewo+PiArICAgICAgICAgICAgICAgZm9y
IChpID0gMCwgdyA9IHdyay0+c3RlcHM7IGkgPCB3cmstPm5yX3N0ZXBzOyBpKyssIHcrKykgewo+
PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAody0+Y29udGV4dCAhPSAoaiAvIDIpKQo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+PiArCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGlmICh3LT50eXBlICE9IEJBVENIKQo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
IGlmICh3cmstPmN0eF9saXN0W2pdLmVuZ2luZV9tYXAgJiYgdy0+ZW5naW5lID09IFZDUykgewo+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHdzaW1fZXJyKCJCYXRjaGVzIHRhcmdl
dHRpbmcgZW5naW5lIG1hcHMgbXVzdCB1c2UgZXhwbGljaXQgZW5naW5lcyFcbiIpOwo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtMTsKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgfQo+PiAgICAgICAgICAgICAgICAgIH0KPj4gICAgICAgICAgfQo+PiAgIAo+PiAr
Cj4gXl5eCj4gCj4+ICAgICAgICAgIC8qCj4+ICAgICAgICAgICAqIENyZWF0ZSBhbmQgY29uZmln
dXJlIGNvbnRleHRzLgo+PiAgICAgICAgICAgKi8KPiAKPiBJJ20gaGVscGluZyEKCklzIHRoaXMg
dGhlIG9ubHkgY29tcGxhaW50PyBJIHdhbnQgdG8gYXZvaWQgcmVzcGlubmluZyBqdXN0IGZvciB0
aGlzIGlmIAp0aGVyZSBpcyBmdXJ0aGVyIGZlZWRiYWNrLgoKUmVnYXJkcywKClR2cnRrbwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
