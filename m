Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 224731E7449
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 06:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7276E087;
	Fri, 29 May 2020 04:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 284A96E087
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 04:06:33 +0000 (UTC)
IronPort-SDR: sb4wfoVO4H1E5W9UQiYM56XTZFvl0oMyTkQfAivJv2WgIXmWLmtChkcEKivllfv6ouhhlCnjzQ
 TlGW1kc4lkww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 21:06:32 -0700
IronPort-SDR: Jogt0Nbh/TsyAPDYZE0yXYDWAvCsCEjfVCxYDLacplNHI24VIOjlYXgEW4f+XH95h09oDzIjae
 vzotEneh3SyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,447,1583222400"; d="scan'208";a="292238425"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.213.66.141])
 ([10.213.66.141])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2020 21:06:30 -0700
To: Paulo Zanoni <paulo.r.zanoni@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200420094746.20409-1-karthik.b.s@intel.com>
 <20200420094746.20409-2-karthik.b.s@intel.com>
 <bab152516fe3b7d9c6c6c5e2e95bb0e6ae6d5bb9.camel@intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <8182137b-da50-b7c8-168c-c4a70e36dbe0@intel.com>
Date: Fri, 29 May 2020 09:36:29 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <bab152516fe3b7d9c6c6c5e2e95bb0e6ae6d5bb9.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: Add enable/disable flip
 done and flip done handler
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

CgpPbiA0LzI0LzIwMjAgMTE6MTQgUE0sIFBhdWxvIFphbm9uaSB3cm90ZToKPiBFbSBzZWcsIDIw
MjAtMDQtMjAgw6BzIDE1OjE3ICswNTMwLCBLYXJ0aGlrIEIgUyBlc2NyZXZldToKPj4gQWRkIGVu
YWJsZS9kaXNhYmxlIGZsaXAgZG9uZSBmdW5jdGlvbnMgYW5kIHRoZSBmbGlwIGRvbmUgaGFuZGxl
cgo+PiBmdW5jdGlvbiB3aGljaCBoYW5kbGVzIHRoZSBmbGlwIGRvbmUgaW50ZXJydXB0Lgo+Pgo+
PiBFbmFibGUgdGhlIGZsaXAgZG9uZSBpbnRlcnJ1cHQgaW4gSUVSLgo+Pgo+PiBFbmFibGUgZmxp
cCBkb25lIGZ1bmN0aW9uIGlzIGNhbGxlZCBiZWZvcmUgd3JpdGluZyB0aGUKPj4gc3VyZmFjZSBh
ZGRyZXNzIHJlZ2lzdGVyIGFzIHRoZSB3cml0ZSB0byB0aGlzIHJlZ2lzdGVyIHRyaWdnZXJzCj4+
IHRoZSBmbGlwIGRvbmUgaW50ZXJydXB0Cj4+Cj4+IEZsaXAgZG9uZSBoYW5kbGVyIGlzIHVzZWQg
dG8gc2VuZCB0aGUgcGFnZSBmbGlwIGV2ZW50IGFzIHNvb24gYXMgdGhlCj4+IHN1cmZhY2UgYWRk
cmVzcyBpcyB3cml0dGVuIGFzIHBlciB0aGUgcmVxdWlyZW1lbnQgb2YgYXN5bmMgZmxpcHMuCj4+
IFRoZSBpbnRlcnJ1cHQgaXMgZGlzYWJsZWQgYWZ0ZXIgdGhlIGV2ZW50IGlzIHNlbnQuCj4+Cj4+
IHYyOiAtQ2hhbmdlIGZ1bmN0aW9uIG5hbWUgZnJvbSBpY2xfKiB0byBza2xfKiAoUGF1bG8pCj4+
ICAgICAgLU1vdmUgZmxpcCBoYW5kbGVyIHRvIHRoaXMgcGF0Y2ggKFBhdWxvKQo+PiAgICAgIC1S
ZW1vdmUgdmJsYW5rX3B1dCgpIChQYXVsbykKPj4gICAgICAtRW5hYmxlIGZsaXAgZG9uZSBpbnRl
cnJ1cHQgZm9yIGdlbjkrIG9ubHkgKFBhdWxvKQo+PiAgICAgIC1FbmFibGUgZmxpcCBkb25lIGlu
dGVycnVwdCBpbiBwb3dlcl93ZWxsX3Bvc3RfZW5hYmxlIGhvb2sgKFBhdWxvKQo+PiAgICAgIC1S
ZW1vdmVkIHRoZSBldmVudCBjaGVjayBpbiBmbGlwIGRvbmUgaGFuZGxlciB0byBoYW5kbGUgYXN5
bmMKPj4gICAgICAgZmxpcHMgd2l0aG91dCBwYWdlZmxpcCBldmVudHMuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEthcnRoaWsgQiBTIDxrYXJ0aGlrLmIuc0BpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgIDcgKysrCj4+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICAgfCA1MSArKysrKysr
KysrKysrKysrKysrKwo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmggICAgICAg
ICAgICAgIHwgIDIgKwo+PiAgIDMgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiBpbmRl
eCBiYWUxZDg5ODc1ZDYuLjNjZTgwNjM0ZDA0NyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gQEAgLTE1MzkxLDYgKzE1MzkxLDEzIEBA
IHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkKPj4gICAJaWYgKHN0YXRlLT5tb2Rlc2V0KQo+PiAgIAkJaWNsX2RidWZf
c2xpY2VfcHJlX3VwZGF0ZShzdGF0ZSk7Cj4+ICAgCj4+ICsJZm9yX2VhY2hfbmV3X2ludGVsX2Ny
dGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7Cj4+ICsJCWlmIChu
ZXdfY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwKSB7Cj4+ICsJCQlza2xfZW5hYmxlX2ZsaXBf
ZG9uZSgmY3J0Yy0+YmFzZSk7Cj4+ICsJCQlicmVhazsKPj4gKwkJfQo+PiArCX0KPj4gKwo+PiAg
IAkvKiBOb3cgZW5hYmxlIHRoZSBjbG9ja3MsIHBsYW5lLCBwaXBlLCBhbmQgY29ubmVjdG9ycyB0
aGF0IHdlIHNldCB1cC4gKi8KPj4gICAJZGV2X3ByaXYtPmRpc3BsYXkuY29tbWl0X21vZGVzZXRf
ZW5hYmxlcyhzdGF0ZSk7Cj4+ICAgCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+PiBpbmRleCAx
NTAyYWI0NGYxYTUuLjliNjRlZDc4NTIzZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
Cj4+IEBAIC0xMjUzLDYgKzEyNTMsMjIgQEAgZGlzcGxheV9waXBlX2NyY19pcnFfaGFuZGxlcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+ICAgCQkJICAgICB1MzIgY3JjNCkg
e30KPj4gICAjZW5kaWYKPj4gICAKPj4gK3N0YXRpYyB2b2lkIGZsaXBfZG9uZV9oYW5kbGVyKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPj4gKwkJCSAgICAgIHVuc2lnbmVkIGlu
dCBwaXBlKQo+PiArewo+PiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gaW50ZWxfZ2V0X2Ny
dGNfZm9yX3BpcGUoZGV2X3ByaXYsIHBpcGUpOwo+PiArCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSA9IGNydGMtPmJhc2Uuc3RhdGU7Cj4+ICsJc3RydWN0IGRybV9kZXZpY2UgKmRl
diA9ICZkZXZfcHJpdi0+ZHJtOwo+PiArCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7Cj4+ICsKPj4g
KwlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2LT5ldmVudF9sb2NrLCBpcnFmbGFncyk7Cj4+ICsKPj4g
Kwlkcm1fY3J0Y19zZW5kX3ZibGFua19ldmVudCgmY3J0Yy0+YmFzZSwgY3J0Y19zdGF0ZS0+ZXZl
bnQpOwo+PiArCWNydGNfc3RhdGUtPmV2ZW50ID0gTlVMTDsKPj4gKwo+PiArCXNwaW5fdW5sb2Nr
X2lycXJlc3RvcmUoJmRldi0+ZXZlbnRfbG9jaywgaXJxZmxhZ3MpOwo+PiArCXNrbF9kaXNhYmxl
X2ZsaXBfZG9uZSgmY3J0Yy0+YmFzZSk7Cj4gCj4gSSBhbSB0cnlpbmcgdG8gdW5kZXJzdGFuZCB0
aGUgY29kZSBoZXJlIGJ1dCBJJ20gbm90IDEwMCUgY29uZmlkZW50LCBzbwo+IG15IGNvbW1lbnRz
IG1heSBiZSB3cm9uZy4gUGxlYXNlIGNvcnJlY3QgbWUgaWYgbmVlZGVkLgo+IAo+IENhbiB5b3Ug
cGxlYXNlIGVsYWJvcmF0ZSBvbiB3aHkgd2UgaGF2ZSB0byBkaXNhYmxlIHRoZSBpbnRlcnJ1cHQg
ZnJvbQo+IHRoZSBpbnRlcnJ1cHQgaGFuZGxlcj8gVGhpcyBsb29rcyByYWN5IHRvIG1lLCBidXQg
SSBtYXkgYmUgd3JvbmcsIHNvIGFuCj4gZXhwbGFuYXRpb24gd291bGQgaGVscC4KPiAKPiBJbiBt
eSBoZWFkIHRoaXMgd291bGQgYmUgdGhlIGlkZWFsOgo+IAo+IC0gSWYgdGhlIHdob2xlIGlvY3Rs
IGlzIGJsb2NrZWQgdW50aWwgd2UgZ2V0IHRoZSBpbnRlcnJ1cHQgKHdoaWNoIGlzCj4gd2hhdCBw
YXRjaCAwNCBzdWdnZXN0cyksIHRoZW4gd2hhdGV2ZXIgaXMgYmxvY2tpbmcgd2FpdGluZyBvbiB0
aGUKPiBpbnRlcnJ1cHQgc2hvdWxkIGVuYWJsZStkaXNhYmxlIHRoZSBpbnRlcnJ1cHQgKHNvIG5v
IGRpc2FibGVfZmxpcF9kb25lCj4gaGVyZSkuCj4gCj4gLSBJZiB0aGUgaW9jdGwgaXMgbm90IGJs
b2NrZWQsIHRoZW4gaXNuJ3QgdGhlcmUgYSByYWNlIHJpc2sgaW4gY2FzZQo+IHVzZXIgc3BhY2Ug
ZmluZHMgYSB3YXkgdG8gc3VibWl0IDIgaW9jdGxzIGJlZm9yZSB3ZSBnZXQgYW4gaW50ZXJydXB0
Pwo+IElmIG5vLCB3aHkgd291bGQgdGhpcyBiZSBpbXBvc3NpYmxlPyBTb21lIHNvcnQgb2YgcmVm
Y291bnRpbmcgY291bGQKPiBoZWxwIGluIHRoaXMgY2FzZS4gSSdtIGFsc28gdGhpbmtpbmcgaW4g
Y2FzZXMgbGlrZSBhbHRlcm5hdGluZyBiZXR3ZWVuCj4gZmxpcHMgcmVxdWlyaW5nIGV2ZW50cyBh
bmQgZmxpcHMgbm90IHJlcXVpcmluZyBldmVudHMuCj4gCgpBZ3JlZWQgb24gdGhpcyBmdWxseS4g
TXkgdGhpbmtpbmcgd2FzIHRvIGp1c3QgZGlzYWJsZSB0aGUgaW50ZXJydXB0IHNvb24gCmFmdGVy
IHdlJ3ZlIGdvdCBpdC4gQnV0IGRvaW5nIHRoaXMgaW4gY29tbWl0IHRhaWwgbWFrZXMgbW9yZSBz
ZW5zZSwgYW5kIAplc3BlY2lhbGx5IG5vdyBhcyBJJ3ZlIG1hZGUgdGhlIGNhbGwgbm9uIGJsb2Nr
aW5nLCBpdCB3aWxsIGRlZmluaXRlbHkgCmhhdmUgYSByaXNrIG9mIGJlaW5nIHJhY3kgYXMgeW91
J3ZlIG1lbnRpb25lZC4KCk1vdmVkIHRoaXMgb3V0IG9mIGludGVycnVwdCBoYW5kbGVyIHRvIGlu
dGVsX2F0b21pY19jb21taXRfdGFpbCAKZnVuY3Rpb24sIHdoZXJlIEknbSBkaXNhYmxpbmcgaXQg
YWZ0ZXIgdGhlIHdhaXQgZm9yIGZsaXAgZG9uZS4KClRoYW5rcywKS2FydGhpay5CLlMKPj4gK30K
Pj4gICAKPj4gICBzdGF0aWMgdm9pZCBoc3dfcGlwZV9jcmNfaXJxX2hhbmRsZXIoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAgIAkJCQkgICAgIGVudW0gcGlwZSBwaXBlKQo+
PiBAQCAtMjM1NSw2ICsyMzcxLDkgQEAgZ2VuOF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBtYXN0ZXJfY3RsKQo+PiAgIAkJaWYgKGlpciAmIEdF
TjhfUElQRV9WQkxBTkspCj4+ICAgCQkJaW50ZWxfaGFuZGxlX3ZibGFuayhkZXZfcHJpdiwgcGlw
ZSk7Cj4+ICAgCj4+ICsJCWlmIChpaXIgJiBHRU45X1BJUEVfUExBTkUxX0ZMSVBfRE9ORSkKPj4g
KwkJCWZsaXBfZG9uZV9oYW5kbGVyKGRldl9wcml2LCBwaXBlKTsKPj4gKwo+PiAgIAkJaWYgKGlp
ciAmIEdFTjhfUElQRV9DRENMS19DUkNfRE9ORSkKPj4gICAJCQloc3dfcGlwZV9jcmNfaXJxX2hh
bmRsZXIoZGV2X3ByaXYsIHBpcGUpOwo+PiAgIAo+PiBAQCAtMjYzNiw2ICsyNjU1LDE5IEBAIGlu
dCBiZHdfZW5hYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4+ICAgCXJldHVybiAw
Owo+PiAgIH0KPj4gICAKPj4gK3ZvaWQgc2tsX2VuYWJsZV9mbGlwX2RvbmUoc3RydWN0IGRybV9j
cnRjICpjcnRjKQo+PiArewo+PiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoY3J0Yy0+ZGV2KTsKPj4gKwllbnVtIHBpcGUgcGlwZSA9IHRvX2ludGVsX2NydGMo
Y3J0YyktPnBpcGU7Cj4+ICsJdW5zaWduZWQgbG9uZyBpcnFmbGFnczsKPj4gKwo+PiArCXNwaW5f
bG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+aXJxX2xvY2ssIGlycWZsYWdzKTsKPj4gKwo+PiArCWJk
d19lbmFibGVfcGlwZV9pcnEoZGV2X3ByaXYsIHBpcGUsIEdFTjlfUElQRV9QTEFORTFfRkxJUF9E
T05FKTsKPj4gKwo+PiArCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT5pcnFfbG9j
aywgaXJxZmxhZ3MpOwo+PiArfQo+PiArCj4+ICAgLyogQ2FsbGVkIGZyb20gZHJtIGdlbmVyaWMg
Y29kZSwgcGFzc2VkICdjcnRjJyB3aGljaAo+PiAgICAqIHdlIHVzZSBhcyBhIHBpcGUgaW5kZXgK
Pj4gICAgKi8KPj4gQEAgLTI2OTYsNiArMjcyOCwxOSBAQCB2b2lkIGJkd19kaXNhYmxlX3ZibGFu
ayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4+ICAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRl
dl9wcml2LT5pcnFfbG9jaywgaXJxZmxhZ3MpOwo+PiAgIH0KPj4gICAKPj4gK3ZvaWQgc2tsX2Rp
c2FibGVfZmxpcF9kb25lKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKPj4gK3sKPj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmRldik7Cj4+ICsJZW51
bSBwaXBlIHBpcGUgPSB0b19pbnRlbF9jcnRjKGNydGMpLT5waXBlOwo+PiArCXVuc2lnbmVkIGxv
bmcgaXJxZmxhZ3M7Cj4+ICsKPj4gKwlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPmlycV9s
b2NrLCBpcnFmbGFncyk7Cj4+ICsKPj4gKwliZHdfZGlzYWJsZV9waXBlX2lycShkZXZfcHJpdiwg
cGlwZSwgR0VOOV9QSVBFX1BMQU5FMV9GTElQX0RPTkUpOwo+PiArCj4+ICsJc3Bpbl91bmxvY2tf
aXJxcmVzdG9yZSgmZGV2X3ByaXYtPmlycV9sb2NrLCBpcnFmbGFncyk7Cj4+ICt9Cj4+ICsKPj4g
ICBzdGF0aWMgdm9pZCBpYnhfaXJxX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKPj4gICB7Cj4+ICAgCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZkZXZfcHJp
di0+dW5jb3JlOwo+PiBAQCAtMjg5Myw2ICsyOTM4LDkgQEAgdm9pZCBnZW44X2lycV9wb3dlcl93
ZWxsX3Bvc3RfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPj4gICAJ
dTMyIGV4dHJhX2llciA9IEdFTjhfUElQRV9WQkxBTksgfCBHRU44X1BJUEVfRklGT19VTkRFUlJV
TjsKPj4gICAJZW51bSBwaXBlIHBpcGU7Cj4+ICAgCj4+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gOSkKPj4gKwkJZXh0cmFfaWVyIHw9IEdFTjlfUElQRV9QTEFORTFfRkxJUF9ET05FOwo+
PiArCj4+ICAgCXNwaW5fbG9ja19pcnEoJmRldl9wcml2LT5pcnFfbG9jayk7Cj4+ICAgCj4+ICAg
CWlmICghaW50ZWxfaXJxc19lbmFibGVkKGRldl9wcml2KSkgewo+PiBAQCAtMzM4Nyw2ICszNDM1
LDkgQEAgc3RhdGljIHZvaWQgZ2VuOF9kZV9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQo+PiAgIAlkZV9waXBlX2VuYWJsZXMgPSBkZV9waXBlX21hc2tl
ZCB8IEdFTjhfUElQRV9WQkxBTksgfAo+PiAgIAkJCQkJICAgR0VOOF9QSVBFX0ZJRk9fVU5ERVJS
VU47Cj4+ICAgCj4+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkKPj4gKwkJZGVfcGlw
ZV9lbmFibGVzIHw9IEdFTjlfUElQRV9QTEFORTFfRkxJUF9ET05FOwo+PiArCj4+ICAgCWRlX3Bv
cnRfZW5hYmxlcyA9IGRlX3BvcnRfbWFza2VkOwo+PiAgIAlpZiAoSVNfR0VOOV9MUChkZXZfcHJp
dikpCj4+ICAgCQlkZV9wb3J0X2VuYWJsZXMgfD0gQlhUX0RFX1BPUlRfSE9UUExVR19NQVNLOwo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmgKPj4gaW5kZXggMjVmMjVjZDk1ODE4Li4yZjEwYzgxMzUx
MTYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmgKPj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuaAo+PiBAQCAtMTEyLDExICsxMTIsMTMg
QEAgaW50IGk5MTVnbV9lbmFibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0YyAqY3J0Yyk7Cj4+ICAg
aW50IGk5NjVfZW5hYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMpOwo+PiAgIGludCBp
bGtfZW5hYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMpOwo+PiAgIGludCBiZHdfZW5h
YmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMpOwo+PiArdm9pZCBza2xfZW5hYmxlX2Zs
aXBfZG9uZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpOwo+PiAgIHZvaWQgaTh4eF9kaXNhYmxlX3Zi
bGFuayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMpOwo+PiAgIHZvaWQgaTkxNWdtX2Rpc2FibGVfdmJs
YW5rKHN0cnVjdCBkcm1fY3J0YyAqY3J0Yyk7Cj4+ICAgdm9pZCBpOTY1X2Rpc2FibGVfdmJsYW5r
KHN0cnVjdCBkcm1fY3J0YyAqY3J0Yyk7Cj4+ICAgdm9pZCBpbGtfZGlzYWJsZV92Ymxhbmsoc3Ry
dWN0IGRybV9jcnRjICpjcnRjKTsKPj4gICB2b2lkIGJkd19kaXNhYmxlX3ZibGFuayhzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMpOwo+PiArdm9pZCBza2xfZGlzYWJsZV9mbGlwX2RvbmUoc3RydWN0IGRy
bV9jcnRjICpjcnRjKTsKPj4gICAKPj4gICB2b2lkIGdlbjJfaXJxX3Jlc2V0KHN0cnVjdCBpbnRl
bF91bmNvcmUgKnVuY29yZSk7Cj4+ICAgdm9pZCBnZW4zX2lycV9yZXNldChzdHJ1Y3QgaW50ZWxf
dW5jb3JlICp1bmNvcmUsIGk5MTVfcmVnX3QgaW1yLAo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
