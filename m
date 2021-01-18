Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 282852F9BDF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 10:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50F4F6E11F;
	Mon, 18 Jan 2021 09:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C12A6E11F
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 09:27:56 +0000 (UTC)
IronPort-SDR: 1cR9iCJTTwPSGzuTgTxahBDxjQ0qOS3IgCdoSKByzWL0ZVSpbwCLdw6YusOCwshqYg5yrQaF8W
 7CwAo82f7Hhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="178930668"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="178930668"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 01:27:53 -0800
IronPort-SDR: ZjVNAm+4W/C2Pe7Z+4WzrnhjIAy21bC5oap9+wMR55zGi7M45jilpy9chC6tCvqCIgoRbtVpKA
 ytZkMxCLfHvg==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="383505759"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.252.169.45])
 ([10.252.169.45])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 01:27:51 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
 <20210111163711.12913-8-ville.syrjala@linux.intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <639bf368-3cc6-769f-fdda-cd9011e7dcc3@intel.com>
Date: Mon, 18 Jan 2021 14:57:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210111163711.12913-8-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 07/11] drm/i915: Reuse the async_flip()
 hook for the async flip disable w/a
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

T24gMS8xMS8yMDIxIDEwOjA3IFBNLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4KPiBPbiBzb21lIHBs
YXRmb3JtcyB3ZSBuZWVkIHRvIHRyaWdnZXIgYW4gZXh0cmEgYXN5bmMgZmxpcCB3aXRoCj4gdGhl
IGFzeW5jIGZsaXAgYml0IGRpc2FibGVkLCBhbmQgdGhlbiB3YWl0IGZvciB0aGUgbmV4dCB2Ymxh
bmsKPiB1bnRpbCB0aGUgYXN5bmMgZmxpcCBiaXQgb2ZmIHN0YXRlIHdpbGwgYWN0dWFsbHkgbGF0
Y2guCj4KPiBDdXJyZW50bHkgdGhlIHcvYSBpcyBqdXN0IG9wZW4gY29kZWQgZm9yIHNrbCsgdW5p
dmVyc2FsIHBsYW5lcy4KPiBJbnN0ZWFkIG9mIGRvaW5nIHRoYXQgbGV0cyByZXVzZSB0aGUgLmFz
eW5jX2ZsaXAoKSBob29rIGZvciB0aGlzCj4gcHVycG9zZSBzaW5jZSBpdCBuZWVkcyB0byB3cml0
ZSB0aGUgZXhhY3Qgc2FtZSBzZXQgb2YgcmVnaXN0ZXJzLgo+IEluIG9yZGVyIHRvIGRvIHRoaXMg
d2UnbGwganVzdCBoYXZlIHRoZSBjYWxsZXIgcGFzcyBpbiB0aGUgc3RhdGUKPiBvZiB0aGUgYXN5
bmMgZmxpcCBiaXQgZXhwbGljaXRseS4KPgo+IENjOiBLYXJ0aGlrIEIgUyA8a2FydGhpay5iLnNA
aW50ZWwuY29tPgo+IENjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgoKTG9va3MgZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBLYXJ0aGlrIEIg
UyA8a2FydGhpay5iLnNAaW50ZWwuY29tPgoKPiAtLS0KPiAgIC4uLi9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCA1OSArKysrKysrKy0tLS0tLS0tLS0tCj4gICAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgNCArLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgIHwgIDcgKystCj4g
ICA0IGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDM3IGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5j
Cj4gaW5kZXggYjVlMWVlOTk1MzVjLi40NjgzZjk4ZjdlNTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiBAQCAtNDUyLDcg
KzQ1Miw3IEBAIHZvaWQgaW50ZWxfdXBkYXRlX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxh
bmUsCj4gICAJdHJhY2VfaW50ZWxfdXBkYXRlX3BsYW5lKCZwbGFuZS0+YmFzZSwgY3J0Yyk7Cj4g
ICAKPiAgIAlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwICYmIHBsYW5lLT5hc3luY19m
bGlwKQo+IC0JCXBsYW5lLT5hc3luY19mbGlwKHBsYW5lLCBjcnRjX3N0YXRlLCBwbGFuZV9zdGF0
ZSk7Cj4gKwkJcGxhbmUtPmFzeW5jX2ZsaXAocGxhbmUsIGNydGNfc3RhdGUsIHBsYW5lX3N0YXRl
LCB0cnVlKTsKPiAgIAllbHNlCj4gICAJCXBsYW5lLT51cGRhdGVfcGxhbmUocGxhbmUsIGNydGNf
c3RhdGUsIHBsYW5lX3N0YXRlKTsKPiAgIH0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IGZjOTMyMDI4YzM2OC4uOWVhN2E4OTQzMmQ2IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBA
QCAtNjE2Niw0MSArNjE2NiwzNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2Rpc2FibGVfZmxp
cF9kb25lKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAgCX0KPiAgIH0KPiAg
IAo+IC1zdGF0aWMgdm9pZCBza2xfZGlzYWJsZV9hc3luY19mbGlwX3dhKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLAo+IC0JCQkJICAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMs
Cj4gLQkJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3Rh
dGUpCj4gK3N0YXRpYyB2b2lkIGludGVsX2NydGNfYXN5bmNfZmxpcF9kaXNhYmxlX3dhKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICsJCQkJCSAgICAgc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpCj4gICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KHN0YXRlLT5iYXNlLmRldik7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpvbGRfY3J0Y19zdGF0ZSA9Cj4gKwkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19z
dGF0ZShzdGF0ZSwgY3J0Yyk7Cj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3
X2NydGNfc3RhdGUgPQo+ICsJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUs
IGNydGMpOwo+ICsJdTggdXBkYXRlX3BsYW5lcyA9IG5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGxh
bmVzOwo+ICsJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGU7
Cj4gICAJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsKPiAtCXN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZSAqbmV3X3BsYW5lX3N0YXRlOwo+ICsJYm9vbCBuZWVkX3ZibF93YWl0ID0gZmFsc2U7Cj4g
ICAJaW50IGk7Cj4gICAKPiAtCWZvcl9lYWNoX25ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0
ZSwgcGxhbmUsIG5ld19wbGFuZV9zdGF0ZSwgaSkgewo+IC0JCXUzMiB1cGRhdGVfbWFzayA9IG5l
d19jcnRjX3N0YXRlLT51cGRhdGVfcGxhbmVzOwo+IC0JCXUzMiBwbGFuZV9jdGwsIHN1cmZfYWRk
cjsKPiAtCQllbnVtIHBsYW5lX2lkIHBsYW5lX2lkOwo+IC0JCXVuc2lnbmVkIGxvbmcgaXJxZmxh
Z3M7Cj4gLQkJZW51bSBwaXBlIHBpcGU7Cj4gLQo+IC0JCWlmIChjcnRjLT5waXBlICE9IHBsYW5l
LT5waXBlIHx8Cj4gLQkJICAgICEodXBkYXRlX21hc2sgJiBCSVQocGxhbmUtPmlkKSkpCj4gLQkJ
CWNvbnRpbnVlOwo+IC0KPiAtCQlwbGFuZV9pZCA9IHBsYW5lLT5pZDsKPiAtCQlwaXBlID0gcGxh
bmUtPnBpcGU7Cj4gLQo+IC0JCXNwaW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+dW5jb3JlLmxv
Y2ssIGlycWZsYWdzKTsKPiAtCQlwbGFuZV9jdGwgPSBpbnRlbF9kZV9yZWFkX2Z3KGRldl9wcml2
LCBQTEFORV9DVEwocGlwZSwgcGxhbmVfaWQpKTsKPiAtCQlzdXJmX2FkZHIgPSBpbnRlbF9kZV9y
ZWFkX2Z3KGRldl9wcml2LCBQTEFORV9TVVJGKHBpcGUsIHBsYW5lX2lkKSk7Cj4gLQo+IC0JCXBs
YW5lX2N0bCAmPSB+UExBTkVfQ1RMX0FTWU5DX0ZMSVA7Cj4gLQo+IC0JCWludGVsX2RlX3dyaXRl
X2Z3KGRldl9wcml2LCBQTEFORV9DVEwocGlwZSwgcGxhbmVfaWQpLCBwbGFuZV9jdGwpOwo+IC0J
CWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9TVVJGKHBpcGUsIHBsYW5lX2lkKSwg
c3VyZl9hZGRyKTsKPiAtCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZfcHJpdi0+dW5jb3Jl
LmxvY2ssIGlycWZsYWdzKTsKPiArCWZvcl9lYWNoX29sZF9pbnRlbF9wbGFuZV9pbl9zdGF0ZShz
dGF0ZSwgcGxhbmUsIG9sZF9wbGFuZV9zdGF0ZSwgaSkgewo+ICsJCWlmIChwbGFuZS0+bmVlZF9h
c3luY19mbGlwX2Rpc2FibGVfd2EgJiYKPiArCQkgICAgcGxhbmUtPnBpcGUgPT0gY3J0Yy0+cGlw
ZSAmJgo+ICsJCSAgICB1cGRhdGVfcGxhbmVzICYgQklUKHBsYW5lLT5pZCkpIHsKPiArCQkJLyoK
PiArCQkJICogQXBhcnQgZnJvbSB0aGUgYXN5bmMgZmxpcCBiaXQgd2Ugd2FudCB0bwo+ICsJCQkg
KiBwcmVzZXJ2ZSB0aGUgb2xkIHN0YXRlIGZvciB0aGUgcGxhbmUuCj4gKwkJCSAqLwo+ICsJCQlw
bGFuZS0+YXN5bmNfZmxpcChwbGFuZSwgb2xkX2NydGNfc3RhdGUsCj4gKwkJCQkJICBvbGRfcGxh
bmVfc3RhdGUsIGZhbHNlKTsKPiArCQkJbmVlZF92Ymxfd2FpdCA9IHRydWU7Cj4gKwkJfQo+ICAg
CX0KPiAgIAo+IC0JaW50ZWxfd2FpdF9mb3JfdmJsYW5rKGRldl9wcml2LCBjcnRjLT5waXBlKTsK
PiArCWlmIChuZWVkX3ZibF93YWl0KQo+ICsJCWludGVsX3dhaXRfZm9yX3ZibGFuayhpOTE1LCBj
cnRjLT5waXBlKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQgaW50ZWxfcHJlX3BsYW5lX3Vw
ZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiBAQCAtNjI5MywxMCArNjI4
OCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsCj4gICAJICogV0EgZm9yIHBsYXRmb3JtcyB3aGVyZSBhc3luYyBh
ZGRyZXNzIHVwZGF0ZSBlbmFibGUgYml0Cj4gICAJICogaXMgZG91YmxlIGJ1ZmZlcmVkIGFuZCBv
bmx5IGxhdGNoZWQgYXQgc3RhcnQgb2YgdmJsYW5rLgo+ICAgCSAqLwo+IC0JaWYgKG9sZF9jcnRj
X3N0YXRlLT51YXBpLmFzeW5jX2ZsaXAgJiYKPiAtCSAgICAhbmV3X2NydGNfc3RhdGUtPnVhcGku
YXN5bmNfZmxpcCAmJgo+IC0JICAgIElTX0dFTl9SQU5HRShkZXZfcHJpdiwgOSwgMTApKQo+IC0J
CXNrbF9kaXNhYmxlX2FzeW5jX2ZsaXBfd2Eoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlKTsK
PiArCWlmIChvbGRfY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwICYmICFuZXdfY3J0Y19zdGF0
ZS0+dWFwaS5hc3luY19mbGlwKQo+ICsJCWludGVsX2NydGNfYXN5bmNfZmxpcF9kaXNhYmxlX3dh
KHN0YXRlLCBjcnRjKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19kaXNh
YmxlX3BsYW5lcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IGluZGV4
IDI1NTY0OGFiMGZhNy4uNTZkOWExOGVmMTE0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBAQCAtMTIyMSw2ICsxMjIx
LDcgQEAgc3RydWN0IGludGVsX3BsYW5lIHsKPiAgIAllbnVtIHBpcGUgcGlwZTsKPiAgIAlib29s
IGhhc19mYmM7Cj4gICAJYm9vbCBoYXNfY2NzOwo+ICsJYm9vbCBuZWVkX2FzeW5jX2ZsaXBfZGlz
YWJsZV93YTsKPiAgIAl1MzIgZnJvbnRidWZmZXJfYml0Owo+ICAgCj4gICAJc3RydWN0IHsKPiBA
QCAtMTI1Nyw3ICsxMjU4LDggQEAgc3RydWN0IGludGVsX3BsYW5lIHsKPiAgIAkJCSBjb25zdCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKPiAgIAl2b2lkICgqYXN5bmNf
ZmxpcCkoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKPiAgIAkJCSAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+IC0JCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxf
cGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKPiArCQkJICAgY29uc3Qgc3RydWN0IGludGVsX3Bs
YW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKPiArCQkJICAgYm9vbCBhc3luY19mbGlwKTsKPiAgIAl2
b2lkICgqZW5hYmxlX2ZsaXBfZG9uZSkoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSk7Cj4gICAJ
dm9pZCAoKmRpc2FibGVfZmxpcF9kb25lKShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lKTsKPiAg
IH07Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gaW5k
ZXggMTE4OGUwZjkyMjIzLi5kN2ZkMDFlMWVmNzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPiBAQCAtNzcxLDcgKzc3MSw4IEBAIGljbF9wcm9n
cmFtX2lucHV0X2NzYyhzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+ICAgc3RhdGljIHZvaWQK
PiAgIHNrbF9wbGFuZV9hc3luY19mbGlwKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gICAJ
CSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gLQkJICAg
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICsJCSAgICAg
Y29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKPiArCQkgICAgIGJv
b2wgYXN5bmNfZmxpcCkKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7Cj4gICAJdW5zaWduZWQgbG9uZyBpcnFmbGFn
czsKPiBAQCAtNzgyLDcgKzc4Myw4IEBAIHNrbF9wbGFuZV9hc3luY19mbGlwKHN0cnVjdCBpbnRl
bF9wbGFuZSAqcGxhbmUsCj4gICAKPiAgIAlwbGFuZV9jdGwgfD0gc2tsX3BsYW5lX2N0bF9jcnRj
KGNydGNfc3RhdGUpOwo+ICAgCj4gLQlwbGFuZV9jdGwgfD0gUExBTkVfQ1RMX0FTWU5DX0ZMSVA7
Cj4gKwlpZiAoYXN5bmNfZmxpcCkKPiArCQlwbGFuZV9jdGwgfD0gUExBTkVfQ1RMX0FTWU5DX0ZM
SVA7Cj4gICAKPiAgIAlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrLCBp
cnFmbGFncyk7Cj4gICAKPiBAQCAtMzMzNSw2ICszMzM3LDcgQEAgc2tsX3VuaXZlcnNhbF9wbGFu
ZV9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAgCXBsYW5lLT5t
aW5fY2RjbGsgPSBza2xfcGxhbmVfbWluX2NkY2xrOwo+ICAgCj4gICAJaWYgKHBsYW5lX2lkID09
IFBMQU5FX1BSSU1BUlkpIHsKPiArCQlwbGFuZS0+bmVlZF9hc3luY19mbGlwX2Rpc2FibGVfd2Eg
PSBJU19HRU5fUkFOR0UoZGV2X3ByaXYsIDksIDEwKTsKPiAgIAkJcGxhbmUtPmFzeW5jX2ZsaXAg
PSBza2xfcGxhbmVfYXN5bmNfZmxpcDsKPiAgIAkJcGxhbmUtPmVuYWJsZV9mbGlwX2RvbmUgPSBz
a2xfcGxhbmVfZW5hYmxlX2ZsaXBfZG9uZTsKPiAgIAkJcGxhbmUtPmRpc2FibGVfZmxpcF9kb25l
ID0gc2tsX3BsYW5lX2Rpc2FibGVfZmxpcF9kb25lOwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
