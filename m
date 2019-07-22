Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31060704AE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 17:55:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9552389CB5;
	Mon, 22 Jul 2019 15:55:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B7C89CB5
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 15:55:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 08:55:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,295,1559545200"; d="scan'208";a="368556889"
Received: from kraman-mobl.amr.corp.intel.com (HELO [10.251.80.208])
 ([10.251.80.208])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jul 2019 08:55:40 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190722131830.14601-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7c12951d-44a6-dcc0-502e-ca75103503ea@linux.intel.com>
Date: Mon, 22 Jul 2019 16:55:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190722131830.14601-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt:
 WaSetVfGuardbandPreemptionVertexCount (bdw/chv)
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

CgpPbiAyMi8wNy8yMDE5IDE0OjE4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gQXMgYSB3L2EgZm9y
IGRhdGEgY29ycnVwdGlvbiwgd2UgYXJlIHRvbGQgdG8gc2V0IHRoZSBwcmVlbXB0aW9uIHZlcnRl
eAo+IGNvdW50IHRvIDB4MjAgb24gYm9vdC4gQXMgaXQgaXMgYSBjb3VudGVyLCBvbmNlIGNvbnRl
eHRzIGFyZSBhY3RpdmUgd2UKPiBkbyBub3QgZXhwZWN0IHRoZSB2YWx1ZSB0byBiZSByZXRhaW5l
ZCwgc28gaGlkZSBpdCBmcm9tIHRoZSB3YS1saXN0Cj4gdmVyaWZpY2F0aW9uLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDI0ICsrKysrKysr
KysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBpbmRleCA3MDRh
Y2UwMWU3ZjUuLjc2MjhmODQ2MzMxNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC02NDcsNiArNjQ3LDI2IEBAIGludCBpbnRlbF9lbmdp
bmVfZW1pdF9jdHhfd2Eoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gICAJcmV0dXJuIDA7Cj4g
ICB9Cj4gICAKPiArc3RhdGljIHZvaWQKPiArZ2VuOF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICsJCQkgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2Fs
KQo+ICt7Cj4gKwkvKiBXYVNldFZmR3VhcmRiYW5kUHJlZW1wdGlvblZlcnRleENvdW50OmJkdyxj
aHYgKi8KPiArCXdhX3dyaXRlX21hc2tlZF9vcih3YWwsIF9NTUlPKDB4ODNBNCksIDAsIDB4ZmZm
ZjAwMjApOwoKMHg4M2E0IGlzIGxpc3RlZCBpbiBzYXZlZCBzdGF0ZSBmb3IgdGhlIGNvbnRleHQg
c28gaGF2ZSB5b3UgdHJpZWQgCnB1dHRpbmcgaXQgYXMgYSBjb250ZXh0IHdvcmthcm91bmQ/CgpS
ZWdhcmRzLAoKVHZydGtvCgo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZAo+ICtiZHdfZ3Rfd29ya2Fy
b3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsKQo+ICt7Cj4gKwlnZW44X2d0X3dvcmthcm91bmRzX2luaXQoaTkxNSwgd2FsKTsK
PiArfQo+ICsKPiArc3RhdGljIHZvaWQKPiArY2h2X2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiArewo+
ICsJZ2VuOF9ndF93b3JrYXJvdW5kc19pbml0KGk5MTUsIHdhbCk7Cj4gK30KPiArCj4gICBzdGF0
aWMgdm9pZAo+ICAgZ2VuOV9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gICB7Cj4gQEAgLTkwNyw2ICs5
MjcsMTAgQEAgZ3RfaW5pdF93b3JrYXJvdW5kcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ICAgCQlieHRfZ3Rfd29ya2Fyb3VuZHNfaW5p
dChpOTE1LCB3YWwpOwo+ICAgCWVsc2UgaWYgKElTX1NLWUxBS0UoaTkxNSkpCj4gICAJCXNrbF9n
dF93b3JrYXJvdW5kc19pbml0KGk5MTUsIHdhbCk7Cj4gKwllbHNlIGlmIChJU19DSEVSUllWSUVX
KGk5MTUpKQo+ICsJCWNodl9ndF93b3JrYXJvdW5kc19pbml0KGk5MTUsIHdhbCk7Cj4gKwllbHNl
IGlmIChJU19CUk9BRFdFTEwoaTkxNSkpCj4gKwkJYmR3X2d0X3dvcmthcm91bmRzX2luaXQoaTkx
NSwgd2FsKTsKPiAgIAllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPD0gOCkKPiAgIAkJcmV0dXJu
Owo+ICAgCWVsc2UKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
