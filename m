Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9758771A22
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 16:20:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1326E2CE;
	Tue, 23 Jul 2019 14:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 451816E2CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 14:20:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 07:20:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="160207613"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga007.jf.intel.com with ESMTP; 23 Jul 2019 07:20:14 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6NEKD3Y015530; Tue, 23 Jul 2019 15:20:13 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
 <20190722232048.9970-6-daniele.ceraolospurio@intel.com>
Date: Tue, 23 Jul 2019 16:20:13 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5dwrzvtxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190722232048.9970-6-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/uc: Unify uc_fw status tracking
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMyBKdWwgMjAxOSAwMToyMDo0NCArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gV2UgY3VycmVu
dGx5IHRyYWNrIGZldGNoIGFuZCBsb2FkIHN0YXR1cyBzZXBhcmF0ZWx5LCBidXQgdGhlIDIgYXJl
Cj4gYWN0dWFsbHkgc2VxdWVudGlhbCBpbiB0aGUgdWMgbGlmZXRpbWUgKGZldGNoIG11c3QgY29t
cGxldGUgYmVmb3JlIHdlCj4gY2FuIGF0dGVtcHQgdGhlIGxvYWQhKS4gVW5pZnlpbmcgdGhlIDIg
dmFyaWFibGVzIHdlIGNhbiBiZXR0ZXIgZm9sbG93Cj4gdGhlIHNlcXVlbnRpYWwgc3RhdGVzIGFu
ZCBpbXByb3ZlIG91ciB0cmFja25nIG9mIHRoZSB1QyBzdGF0ZS4KPgo+IEFsc28sIHNwcmlua2xl
IHNvbWUgR0VNX0JVR19PTiB0byBtYWtlIHN1cmUgd2UgdHJhbnNpdGlvbiBjb3JyZWN0bHkKPiBi
ZXR3ZWVuIHN0YXRlcy4KPgo+IFN1Z2dlc3RlZC1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFs
LndhamRlY3prb0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNw
dXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9odWMuYyAgIHwgIDQgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuYyB8IDc0ICsrKysrKysrKystLS0tLS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oIHwgNTAgKysrKysrKystLS0tLS0tLQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKyksIDcxIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jICAKPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jCj4gaW5kZXggYmMxNDQzOTE3M2Q3Li4x
ODY4ZjY3NmQ4OTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfaHVjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYwo+
IEBAIC0xMTcsNyArMTE3LDcgQEAgaW50IGludGVsX2h1Y19hdXRoKHN0cnVjdCBpbnRlbF9odWMg
Kmh1YykKPiAgCXN0cnVjdCBpbnRlbF9ndWMgKmd1YyA9ICZndC0+dWMuZ3VjOwo+ICAJaW50IHJl
dDsKPiAtCWlmIChodWMtPmZ3LmxvYWRfc3RhdHVzICE9IElOVEVMX1VDX0ZJUk1XQVJFX1NVQ0NF
U1MpCj4gKwlpZiAoaHVjLT5mdy5zdGF0dXMgIT0gSU5URUxfVUNfRklSTVdBUkVfTE9BREVEKQoK
aWlyYyB3ZSBoYXZlIGRlZGljYXRlZCBoZWxwZXIgaW50ZWxfdWNfZndfaXNfbG9hZGVkKCkgZm9y
IHRoaXMKCj4gIAkJcmV0dXJuIC1FTk9FWEVDOwo+IAlyZXQgPSBpbnRlbF9ndWNfYXV0aF9odWMo
Z3VjLAo+IEBAIC0xNDEsNyArMTQxLDcgQEAgaW50IGludGVsX2h1Y19hdXRoKHN0cnVjdCBpbnRl
bF9odWMgKmh1YykKPiAgCXJldHVybiAwOwo+IGZhaWw6Cj4gLQlodWMtPmZ3LmxvYWRfc3RhdHVz
ID0gSU5URUxfVUNfRklSTVdBUkVfRkFJTDsKPiArCWh1Yy0+Zncuc3RhdHVzID0gSU5URUxfVUNf
RklSTVdBUkVfTE9BRF9GQUlMOwoKaG1tLCBzbyBhZnRlciB3ZSBsb2FkIGJhZCBIdUMgZncgYnV0
IGJlZm9yZSB3ZSBhdXRoZW50aWNhdGUgaXQKd2Ugd2lsbCByZXBvcnQgaXQgYXMgbG9hZGVkIChh
a2Egc3VjY2Vzc2Z1bCk/CgptYXliZSBpbiBhZGRpdGlvbiB0byAnbG9hZGVkJyBzdGF0dXMgdGhl
cmUgc2hvdWxkIGFkZCBleHRyYQonYXV0aGVudGljYXRlZC9ydW5uaW5nJyBzdGF0dXMgPyBub3Rl
IHRoYXQgd2UgY2FuIGFsc28gbG9hZAp0aGUgZ3VjIGJ1dCB0aGVuIGl0IGNhbiBzdGlsbCBub3Qg
Ym9vdCBkdWUgdG8gYmFkIHNpZ25hdHVyZQoKPiAJRFJNX0VSUk9SKCJIdUM6IEF1dGhlbnRpY2F0
aW9uIGZhaWxlZCAlZFxuIiwgcmV0KTsKPiAgCXJldHVybiByZXQ7CgovLi4uLwoKPiBAQCAtOTUs
MjMgKzk1LDExIEBAIHZvaWQgaW50ZWxfdWNfZndfZmV0Y2goc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgIAo+ICpkZXZfcHJpdiwKPiAgCWludCBlcnI7Cj4gCUdFTV9CVUdfT04oIWludGVsX3VjX2Z3
X3N1cHBvcnRlZCh1Y19mdykpOwo+IC0KPiAtCWlmICghdWNfZnctPnBhdGgpIHsKPiAtCQlkZXZf
aW5mbyhkZXZfcHJpdi0+ZHJtLmRldiwKPiAtCQkJICIlczogTm8gZmlybXdhcmUgd2FzIGRlZmlu
ZWQgZm9yICVzIVxuIiwKPiAtCQkJIGludGVsX3VjX2Z3X3R5cGVfcmVwcih1Y19mdy0+dHlwZSks
Cj4gLQkJCSBpbnRlbF9wbGF0Zm9ybV9uYW1lKElOVEVMX0lORk8oZGV2X3ByaXYpLT5wbGF0Zm9y
bSkpOwo+IC0JCXJldHVybjsKPiAtCX0KPiArCUdFTV9CVUdfT04oIWludGVsX3VjX2Z3X2lzX3Nl
bGVjdGVkKHVjX2Z3KSk7Cj4gCURSTV9ERUJVR19EUklWRVIoIiVzIGZ3IGZldGNoICVzXG4iLAo+
ICAJCQkgaW50ZWxfdWNfZndfdHlwZV9yZXByKHVjX2Z3LT50eXBlKSwgdWNfZnctPnBhdGgpOwoK
SSBndWVzcyB3ZSBjYW4gZHJvcCB0aGlzIGRlYnVnIGxvZyBhcyByZXF1ZXN0X2Zpcm13YXJlKCkg
d2lsbCBwcmludApmdyBwYXRoIG9uIGZhaWx1cmUgYW5kIGFjdHVhbCBsb2FkZWQgZncgaXMgcHJp
bnRlZCBlbHNld2hlcmUgbGF0ZXIKCj4gLQl1Y19mdy0+ZmV0Y2hfc3RhdHVzID0gSU5URUxfVUNf
RklSTVdBUkVfUEVORElORzsKPiAtCURSTV9ERUJVR19EUklWRVIoIiVzIGZ3IGZldGNoICVzXG4i
LAo+IC0JCQkgaW50ZWxfdWNfZndfdHlwZV9yZXByKHVjX2Z3LT50eXBlKSwKPiAtCQkJIGludGVs
X3VjX2Z3X3N0YXR1c19yZXByKHVjX2Z3LT5mZXRjaF9zdGF0dXMpKTsKPiAtCj4gIAllcnIgPSBy
ZXF1ZXN0X2Zpcm13YXJlKCZmdywgdWNfZnctPnBhdGgsICZwZGV2LT5kZXYpOwo+ICAJaWYgKGVy
cikgewo+ICAJCURSTV9ERUJVR19EUklWRVIoIiVzIGZ3IHJlcXVlc3RfZmlybXdhcmUgZXJyPSVk
XG4iLAo+IEBAIC0yMTksMTkgKzIwNywxNyBAQCB2b2lkIGludGVsX3VjX2Z3X2ZldGNoKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICAKPiAqZGV2X3ByaXYsCj4gCXVjX2Z3LT5vYmogPSBvYmo7Cj4g
IAl1Y19mdy0+c2l6ZSA9IGZ3LT5zaXplOwo+IC0JdWNfZnctPmZldGNoX3N0YXR1cyA9IElOVEVM
X1VDX0ZJUk1XQVJFX1NVQ0NFU1M7Cj4gLQlEUk1fREVCVUdfRFJJVkVSKCIlcyBmdyBmZXRjaCAl
c1xuIiwKPiAtCQkJIGludGVsX3VjX2Z3X3R5cGVfcmVwcih1Y19mdy0+dHlwZSksCj4gLQkJCSBp
bnRlbF91Y19md19zdGF0dXNfcmVwcih1Y19mdy0+ZmV0Y2hfc3RhdHVzKSk7Cj4gKwl1Y19mdy0+
c3RhdHVzID0gSU5URUxfVUNfRklSTVdBUkVfRkVUQ0hFRDsKPiArCURSTV9ERUJVR19EUklWRVIo
IiVzIGZ3IGZldGNoIGRvbmVcbiIsCj4gKwkJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnct
PnR5cGUpKTsKPiAJcmVsZWFzZV9maXJtd2FyZShmdyk7Cj4gIAlyZXR1cm47Cj4gZmFpbDoKPiAt
CXVjX2Z3LT5mZXRjaF9zdGF0dXMgPSBJTlRFTF9VQ19GSVJNV0FSRV9GQUlMOwo+IC0JRFJNX0RF
QlVHX0RSSVZFUigiJXMgZncgZmV0Y2ggJXNcbiIsCj4gLQkJCSBpbnRlbF91Y19md190eXBlX3Jl
cHIodWNfZnctPnR5cGUpLAo+IC0JCQkgaW50ZWxfdWNfZndfc3RhdHVzX3JlcHIodWNfZnctPmZl
dGNoX3N0YXR1cykpOwo+ICsJdWNfZnctPnN0YXR1cyA9IElOVEVMX1VDX0ZJUk1XQVJFX0ZFVENI
X0ZBSUw7Cj4gKwlEUk1fREVCVUdfRFJJVkVSKCIlcyBmdyBmZXRjaCBmYWlsZWRcbiIsCj4gKwkJ
CSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpKTsKPiAJRFJNX1dBUk4oIiVzOiBG
YWlsZWQgdG8gZmV0Y2ggZmlybXdhcmUgJXMgKGVycm9yICVkKVxuIiwKCkknbSB3b25kZXJpbmcg
aWYgd2Ugd2FudCB0byBrZWVwIG91ciBhYm92ZSBtZXNzYWdlcyBhcyByZXF1ZXN0X2Zpcm13YXJl
KCkKd2lsbCByZXBvcnQgc29tZXRoaW5nIGxpa2UgdGhpcwoKWyAgIDEyLjE5ODAzN10gaTkxNSAw
MDAwOjAwOjAyLjA6IERpcmVjdCBmaXJtd2FyZSBsb2FkIGZvciBpOTE1L1hYWCBmYWlsZWQgIAp3
aXRoIGVycm9yIC0yCgoKPiAgCQkgaW50ZWxfdWNfZndfdHlwZV9yZXByKHVjX2Z3LT50eXBlKSwg
dWNfZnctPnBhdGgsIGVycik7Cj4gQEAgLTI4NywxMyArMjczLDExIEBAIGludCBpbnRlbF91Y19m
d191cGxvYWQoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywKPiAgCURSTV9ERUJVR19EUklWRVIo
IiVzIGZ3IGxvYWQgJXNcbiIsCj4gIAkJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5
cGUpLCB1Y19mdy0+cGF0aCk7Cj4gLQlpZiAodWNfZnctPmZldGNoX3N0YXR1cyAhPSBJTlRFTF9V
Q19GSVJNV0FSRV9TVUNDRVNTKQo+IC0JCXJldHVybiAtRU5PRVhFQzsKPiArCS8qIG1ha2Ugc3Vy
ZSB0aGUgc3RhdHVzIHdhcyBjbGVhcmVkIHRoZSBsYXN0IHRpbWUgd2UgcmVzZXQgdGhlIHVjICov
Cj4gKwlHRU1fQlVHX09OKHVjX2Z3LT5zdGF0dXMgPT0gSU5URUxfVUNfRklSTVdBUkVfTE9BREVE
KTsKPiAtCXVjX2Z3LT5sb2FkX3N0YXR1cyA9IElOVEVMX1VDX0ZJUk1XQVJFX1BFTkRJTkc7Cj4g
LQlEUk1fREVCVUdfRFJJVkVSKCIlcyBmdyBsb2FkICVzXG4iLAo+IC0JCQkgaW50ZWxfdWNfZndf
dHlwZV9yZXByKHVjX2Z3LT50eXBlKSwKPiAtCQkJIGludGVsX3VjX2Z3X3N0YXR1c19yZXByKHVj
X2Z3LT5sb2FkX3N0YXR1cykpOwo+ICsJaWYgKHVjX2Z3LT5zdGF0dXMgPCBJTlRFTF9VQ19GSVJN
V0FSRV9GRVRDSEVEKQo+ICsJCXJldHVybiAtRU5PRVhFQzsKPiAJLyogQ2FsbCBjdXN0b20gbG9h
ZGVyICovCj4gIAlpbnRlbF91Y19md19nZ3R0X2JpbmQodWNfZncpOwo+IEBAIC0zMDIsMTAgKzI4
Niw5IEBAIGludCBpbnRlbF91Y19md191cGxvYWQoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywK
PiAgCWlmIChlcnIpCj4gIAkJZ290byBmYWlsOwo+IC0JdWNfZnctPmxvYWRfc3RhdHVzID0gSU5U
RUxfVUNfRklSTVdBUkVfU1VDQ0VTUzsKPiAtCURSTV9ERUJVR19EUklWRVIoIiVzIGZ3IGxvYWQg
JXNcbiIsCj4gLQkJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLAo+IC0JCQkg
aW50ZWxfdWNfZndfc3RhdHVzX3JlcHIodWNfZnctPmxvYWRfc3RhdHVzKSk7Cj4gKwl1Y19mdy0+
c3RhdHVzID0gSU5URUxfVUNfRklSTVdBUkVfTE9BREVEOwo+ICsJRFJNX0RFQlVHX0RSSVZFUigi
JXMgZncgbG9hZCBjb21wbGV0ZWRcbiIsCj4gKwkJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNf
ZnctPnR5cGUpKTsKPiAJRFJNX0lORk8oIiVzOiBMb2FkZWQgZmlybXdhcmUgJXMgKHZlcnNpb24g
JXUuJXUpXG4iLAo+ICAJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLAo+IEBA
IC0zMTUsMTAgKzI5OCw5IEBAIGludCBpbnRlbF91Y19md191cGxvYWQoc3RydWN0IGludGVsX3Vj
X2Z3ICp1Y19mdywKPiAgCXJldHVybiAwOwo+IGZhaWw6Cj4gLQl1Y19mdy0+bG9hZF9zdGF0dXMg
PSBJTlRFTF9VQ19GSVJNV0FSRV9GQUlMOwo+IC0JRFJNX0RFQlVHX0RSSVZFUigiJXMgZncgbG9h
ZCAlc1xuIiwKPiAtCQkJIGludGVsX3VjX2Z3X3R5cGVfcmVwcih1Y19mdy0+dHlwZSksCj4gLQkJ
CSBpbnRlbF91Y19md19zdGF0dXNfcmVwcih1Y19mdy0+bG9hZF9zdGF0dXMpKTsKPiArCXVjX2Z3
LT5zdGF0dXMgPSBJTlRFTF9VQ19GSVJNV0FSRV9MT0FEX0ZBSUw7Cj4gKwlEUk1fREVCVUdfRFJJ
VkVSKCIlcyBmdyBsb2FkIGZhaWxlZFxuIiwKPiArCQkJIGludGVsX3VjX2Z3X3R5cGVfcmVwcih1
Y19mdy0+dHlwZSkpOwoKbWF5YmUgZm9yIGRlYnVnIHB1cnBvc2VzIHdlIGNhbiBhZGQgaGVscGVy
IGxpa2UKCnN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF91Y19md19zZXRfc3RhdHVzKHVjX2Z3LCBz
dGF0dXMpCnsKI2lmZGVmIENPTkZJR19EUk1fSTkxNV9ERUJVR19HVUMKCURSTV9ERUJVR19EUklW
RVIoIiVzOiAlcyAtPiAlc1xuIiwKCQlpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUp
LAoJCWludGVsX3VjX2Z3X3R5cGVfcmVwcih1Y19mdy0+c3RhdHVzKQoJCWludGVsX3VjX2Z3X3R5
cGVfcmVwcihzdGF0dXMpKTsKI2VuZGlmCgl1Y19mdy0+c3RhdHVzID0gc3RhdHVzOwp9CgoKPiAJ
RFJNX1dBUk4oIiVzOiBGYWlsZWQgdG8gbG9hZCBmaXJtd2FyZSAlcyAoZXJyb3IgJWQpXG4iLAo+
ICAJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLCB1Y19mdy0+cGF0aCwgZXJy
KTsKPiBAQCAtMzMwLDcgKzMxMiwxMCBAQCBpbnQgaW50ZWxfdWNfZndfaW5pdChzdHJ1Y3QgaW50
ZWxfdWNfZncgKnVjX2Z3KQo+ICB7Cj4gIAlpbnQgZXJyOwo+IC0JaWYgKHVjX2Z3LT5mZXRjaF9z
dGF0dXMgIT0gSU5URUxfVUNfRklSTVdBUkVfU1VDQ0VTUykKPiArCS8qIHRoaXMgc2hvdWxkIGhh
cHBlbiBiZWZvcmUgdGhlIGxvYWQhICovCj4gKwlHRU1fQlVHX09OKHVjX2Z3LT5zdGF0dXMgPT0g
SU5URUxfVUNfRklSTVdBUkVfTE9BREVEKTsKPiArCj4gKwlpZiAodWNfZnctPnN0YXR1cyA8IElO
VEVMX1VDX0ZJUk1XQVJFX0ZFVENIRUQpCj4gIAkJcmV0dXJuIC1FTk9FWEVDOwo+IAllcnIgPSBp
OTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKHVjX2Z3LT5vYmopOwo+IEBAIC0zNDMsNyArMzI4LDcg
QEAgaW50IGludGVsX3VjX2Z3X2luaXQoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdykKPiB2b2lk
IGludGVsX3VjX2Z3X2Zpbmkoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdykKPiAgewo+IC0JaWYg
KHVjX2Z3LT5mZXRjaF9zdGF0dXMgIT0gSU5URUxfVUNfRklSTVdBUkVfU1VDQ0VTUykKPiArCWlm
ICh1Y19mdy0+c3RhdHVzIDwgSU5URUxfVUNfRklSTVdBUkVfRkVUQ0hFRCkKPiAgCQlyZXR1cm47
Cj4gCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyh1Y19mdy0+b2JqKTsKPiBAQCAtMzc3LDcg
KzM2Miw3IEBAIHZvaWQgaW50ZWxfdWNfZndfY2xlYW51cF9mZXRjaChzdHJ1Y3QgaW50ZWxfdWNf
ZncgIAo+ICp1Y19mdykKPiAgCWlmIChvYmopCj4gIAkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmop
Owo+IC0JdWNfZnctPmZldGNoX3N0YXR1cyA9IElOVEVMX1VDX0ZJUk1XQVJFX05PVF9TVEFSVEVE
Owo+ICsJdWNfZnctPnN0YXR1cyA9IElOVEVMX1VDX0ZJUk1XQVJFX1NFTEVDVElPTl9ET05FOwo+
ICB9Cj4gLyoqCj4gQEAgLTM5MSw5ICszNzYsOCBAQCB2b2lkIGludGVsX3VjX2Z3X2R1bXAoY29u
c3Qgc3RydWN0IGludGVsX3VjX2Z3ICAKPiAqdWNfZncsIHN0cnVjdCBkcm1fcHJpbnRlciAqcCkK
PiAgewo+ICAJZHJtX3ByaW50ZihwLCAiJXMgZmlybXdhcmU6ICVzXG4iLAo+ICAJCSAgIGludGVs
X3VjX2Z3X3R5cGVfcmVwcih1Y19mdy0+dHlwZSksIHVjX2Z3LT5wYXRoKTsKPiAtCWRybV9wcmlu
dGYocCwgIlx0c3RhdHVzOiBmZXRjaCAlcywgbG9hZCAlc1xuIiwKPiAtCQkgICBpbnRlbF91Y19m
d19zdGF0dXNfcmVwcih1Y19mdy0+ZmV0Y2hfc3RhdHVzKSwKPiAtCQkgICBpbnRlbF91Y19md19z
dGF0dXNfcmVwcih1Y19mdy0+bG9hZF9zdGF0dXMpKTsKPiArCWRybV9wcmludGYocCwgIlx0c3Rh
dHVzOiAlc1xuIiwKPiArCQkgICBpbnRlbF91Y19md19zdGF0dXNfcmVwcih1Y19mdy0+c3RhdHVz
KSk7Cj4gIAlkcm1fcHJpbnRmKHAsICJcdHZlcnNpb246IHdhbnRlZCAldS4ldSwgZm91bmQgJXUu
JXVcbiIsCj4gIAkJICAgdWNfZnctPm1ham9yX3Zlcl93YW50ZWQsIHVjX2Z3LT5taW5vcl92ZXJf
d2FudGVkLAo+ICAJCSAgIHVjX2Z3LT5tYWpvcl92ZXJfZm91bmQsIHVjX2Z3LT5taW5vcl92ZXJf
Zm91bmQpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5oICAKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgKPiBp
bmRleCA1NTBiNjI2YWZiMTUuLmUwYzVhMzg2ODVlNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAo+IEBAIC0zNiwxMiArMzYsMTMgQEAgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGU7Cj4gICNkZWZpbmUgSU5URUxfVUNfRklSTVdBUkVfVVJMICAKPiAiaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZmlybXdhcmUvbGludXgt
ZmlybXdhcmUuZ2l0L3RyZWUvaTkxNSIKPiBlbnVtIGludGVsX3VjX2Z3X3N0YXR1cyB7Cj4gLQlJ
TlRFTF9VQ19GSVJNV0FSRV9OT1RfU1VQUE9SVEVEID0gLTIsIC8qIG5vIHVjIEhXICovCj4gLQlJ
TlRFTF9VQ19GSVJNV0FSRV9GQUlMID0gLTEsCj4gKwlJTlRFTF9VQ19GSVJNV0FSRV9MT0FEX0ZB
SUwgPSAtMywKPiArCUlOVEVMX1VDX0ZJUk1XQVJFX0ZFVENIX0ZBSUwgPSAtMiwKPiArCUlOVEVM
X1VDX0ZJUk1XQVJFX05PVF9TVVBQT1JURUQgPSAtMSwgLyogbm8gdWMgSFcgKi8KPiAgCUlOVEVM
X1VDX0ZJUk1XQVJFX1VOSU5JVElBTElaRUQgPSAwLCAvKiB1c2VkIHRvIGNhdGNoIGNoZWNrcyBk
b25lIHRvbyAgCj4gZWFybHkgKi8KPiAtCUlOVEVMX1VDX0ZJUk1XQVJFX05PVF9TVEFSVEVEID0g
MSwKPiAtCUlOVEVMX1VDX0ZJUk1XQVJFX1BFTkRJTkcsCj4gLQlJTlRFTF9VQ19GSVJNV0FSRV9T
VUNDRVNTCj4gKwlJTlRFTF9VQ19GSVJNV0FSRV9TRUxFQ1RJT05fRE9ORSwgLyogc2VsZWN0aW9u
IGluY2x1ZGUgdGhlICJubyBGVyIgIAo+IGNhc2UgKi8KPiArCUlOVEVMX1VDX0ZJUk1XQVJFX0ZF
VENIRUQsCj4gKwlJTlRFTF9VQ19GSVJNV0FSRV9MT0FERUQKCkkgd2FzIHdvcmtpbmcgb24gc29t
ZXRoaW5nIHNpbWlsYXIgYnV0IG15IG5hbWVzIHdlcmU6CgoJVU5JTklUSUFMSVpFRAoJfAlcLS0+
IE4vQSAobm8gaHcgb3IgZGlzYWJsZWQpCglERUZJTkVEIChha2Egc2VsZWN0aW9uIGRvbmUpCgl8
CVwtLT4gIE1JU1NJTkcgKGFrYSBmZXRjaCBmYWlsZWQpCglBVkFJTEFCTEUgKGFrYSBmZXRjaGVk
KQoJfHwJXC0tPiBGQUlMRUQKCVVQTE9BREVECglSVU5OSU5HIChhdXRoZW50aWNhdGVkKQoKSSB3
YXMgYWxzbyB0cnlpbmcgdG8gYWRkIGV4dHJhIGZsYWcgbGlrZSAuYXV0b19zZWxlY3RlZCB0byBk
ZWNpZGUKaWYgY29udGludWUgd2l0aCBncmFjZWZ1bCBmYWxsYmFjayBpZiBzb21ldGhpbmcgd2Vu
dCB3cm9uZwoKLy4uLi8KCj4gQEAgLTE3OSw3ICsxODEsNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQg
aW50ZWxfdWNfZndfc2FuaXRpemUoc3RydWN0ICAKPiBpbnRlbF91Y19mdyAqdWNfZncpCj4gICAq
Lwo+ICBzdGF0aWMgaW5saW5lIHUzMiBpbnRlbF91Y19md19nZXRfdXBsb2FkX3NpemUoc3RydWN0
IGludGVsX3VjX2Z3ICp1Y19mdykKPiAgewo+IC0JaWYgKHVjX2Z3LT5mZXRjaF9zdGF0dXMgIT0g
SU5URUxfVUNfRklSTVdBUkVfU1VDQ0VTUykKPiArCWlmICh1Y19mdy0+c3RhdHVzIDwgSU5URUxf
VUNfRklSTVdBUkVfRkVUQ0hFRCkKPiAgCQlyZXR1cm4gMDsKPiAJcmV0dXJuIHVjX2Z3LT5oZWFk
ZXJfc2l6ZSArIHVjX2Z3LT51Y29kZV9zaXplOwoKYnR3LCBtYXliZSB3ZSBzaG91bGQgYWRkIEdF
TV9CVUdfT04gaGVyZSB0b28gPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
