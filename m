Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 173AD4A7BB
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:58:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51C8F6E202;
	Tue, 18 Jun 2019 16:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61C486E202
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 16:58:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 09:58:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="357918445"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jun 2019 09:58:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190618161951.28820-1-chris@chris-wilson.co.uk>
 <20190618161951.28820-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3447e344-dad7-6812-b56f-3d1ea79b380e@linux.intel.com>
Date: Tue, 18 Jun 2019 17:58:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618161951.28820-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Don't dereference request if
 it may have been retired
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

Ck9uIDE4LzA2LzIwMTkgMTc6MTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGlzIGhhcyBjb3Vu
dCBtZSBvdXQgb24gY291bnRsZXNzIG9jY2FzaW9ucywgd2hlbiB3ZSByZXRyaWV2ZSBhIHBvaW50
ZXIKPiBmcm9tIHRoZSBzdWJtaXNzaW9uL2V4ZWNsaXN0cyBiYWNrZW5kLCBpdCBkb2VzIG5vdCBj
YXJyeSBhIHJlZmVyZW5jZSB0bwo+IHRoZSBjb250ZXh0IG9yIHJpbmcuIFRob3NlIGFyZSBvbmx5
IHBpbm5lZCB3aGlsZSB0aGUgcnF1ZXN0IGlzIGFjdGl2ZSwKPiBzbyBpZiB3ZSBzZWUgdGhlIHJl
cXVlc3QgaXMgY29tcGxldGVkLCBpdCBtYXkgYmUgaW4gdGhlIHByb2Nlc3Mgb2YgYmVpbmcKPiBy
ZXRpcmVkIGFuZCB0aG9zZSBwb2ludGVycyBkZWZ1bmN0Lgo+IAo+IEJ1Z3ppbGxhOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5MzgKPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgMTYgKysrKysrKysrLS0t
LS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+IGluZGV4IDg5
ODY5Mjk4OTMxMy4uN2ZkMzNlODFjMmQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmMKPiBAQCAtMTMxMSwxMiArMTMxMSwxMyBAQCBzdGF0aWMgdm9pZCBo
ZXhkdW1wKHN0cnVjdCBkcm1fcHJpbnRlciAqbSwgY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgbGVu
KQo+ICAgCX0KPiAgIH0KPiAgIAo+IC1zdGF0aWMgdm9pZCBpbnRlbF9lbmdpbmVfcHJpbnRfcmVn
aXN0ZXJzKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiArc3RhdGljIHZv
aWQgaW50ZWxfZW5naW5lX3ByaW50X3JlZ2lzdGVycyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUsCj4gICAJCQkJCSBzdHJ1Y3QgZHJtX3ByaW50ZXIgKm0pCj4gICB7Cj4gICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZW5naW5lLT5pOTE1Owo+ICAgCWNvbnN0IHN0
cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICogY29uc3QgZXhlY2xpc3RzID0KPiAgIAkJJmVu
Z2luZS0+ZXhlY2xpc3RzOwo+ICsJdW5zaWduZWQgbG9uZyBmbGFnczsKPiAgIAl1NjQgYWRkcjsK
PiAgIAo+ICAgCWlmIChlbmdpbmUtPmlkID09IFJDUzAgJiYgSVNfR0VOX1JBTkdFKGRldl9wcml2
LCA0LCA3KSkKPiBAQCAtMTM5NywxNSArMTM5OCwxNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lbmdp
bmVfcHJpbnRfcmVnaXN0ZXJzKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwK
PiAgIAkJCQkgICBpZHgsIGh3c1tpZHggKiAyXSwgaHdzW2lkeCAqIDIgKyAxXSk7Cj4gICAJCX0K
PiAgIAo+IC0JCXJjdV9yZWFkX2xvY2soKTsKPiArCQlzcGluX2xvY2tfaXJxc2F2ZSgmZW5naW5l
LT5hY3RpdmUubG9jaywgZmxhZ3MpOwo+ICAgCQlmb3IgKGlkeCA9IDA7IGlkeCA8IGV4ZWNsaXN0
c19udW1fcG9ydHMoZXhlY2xpc3RzKTsgaWR4KyspIHsKPiAgIAkJCXN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxOwo+ICAgCQkJdW5zaWduZWQgaW50IGNvdW50Owo+ICsJCQljaGFyIGhkcls4MF07Cj4g
ICAKPiAgIAkJCXJxID0gcG9ydF91bnBhY2soJmV4ZWNsaXN0cy0+cG9ydFtpZHhdLCAmY291bnQp
Owo+IC0JCQlpZiAocnEpIHsKPiAtCQkJCWNoYXIgaGRyWzgwXTsKPiAtCj4gKwkJCWlmICghcnEp
IHsKPiArCQkJCWRybV9wcmludGYobSwgIlx0XHRFTFNQWyVkXSBpZGxlXG4iLCBpZHgpOwo+ICsJ
CQl9IGVsc2UgaWYgKCFpOTE1X3JlcXVlc3Rfc2lnbmFsZWQocnEpKSB7Cj4gICAJCQkJc25wcmlu
dGYoaGRyLCBzaXplb2YoaGRyKSwKPiAgIAkJCQkJICJcdFx0RUxTUFslZF0gY291bnQ9JWQsIHJp
bmc6e3N0YXJ0OiUwOHgsIGh3c3A6JTA4eCwgc2Vxbm86JTA4eH0sIHJxOiAiLAo+ICAgCQkJCQkg
aWR4LCBjb3VudCwKPiBAQCAtMTQxNCwxMSArMTQxNiwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9l
bmdpbmVfcHJpbnRfcmVnaXN0ZXJzKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSwKPiAgIAkJCQkJIGh3c3Bfc2Vxbm8ocnEpKTsKPiAgIAkJCQlwcmludF9yZXF1ZXN0KG0sIHJx
LCBoZHIpOwo+ICAgCQkJfSBlbHNlIHsKPiAtCQkJCWRybV9wcmludGYobSwgIlx0XHRFTFNQWyVk
XSBpZGxlXG4iLCBpZHgpOwo+ICsJCQkJcHJpbnRfcmVxdWVzdChtLCBycSwgIlx0XHRFTFNQWyVk
XSBycTogIik7Cj4gICAJCQl9Cj4gICAJCX0KPiAgIAkJZHJtX3ByaW50ZihtLCAiXHRcdEhXIGFj
dGl2ZT8gMHgleFxuIiwgZXhlY2xpc3RzLT5hY3RpdmUpOwo+IC0JCXJjdV9yZWFkX3VubG9jaygp
Owo+ICsJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+YWN0aXZlLmxvY2ssIGZsYWdz
KTsKPiAgIAl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPiA2KSB7Cj4gICAJCWRybV9w
cmludGYobSwgIlx0UFBfRElSX0JBU0U6IDB4JTA4eFxuIiwKPiAgIAkJCSAgIEVOR0lORV9SRUFE
KGVuZ2luZSwgUklOR19QUF9ESVJfQkFTRSkpOwo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
