Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 450FA1C3B54
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 15:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6CBC6E086;
	Mon,  4 May 2020 13:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BFE5898BC
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 13:33:48 +0000 (UTC)
IronPort-SDR: NN9Uw6uuxGUry5ELacHiIby4/GYc8WRrV4KC1pCJLb0wLvklLWCbnI0TS2sHiU7fKwburAp5PQ
 WeCPjgLA3k8g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 06:33:47 -0700
IronPort-SDR: lErOZ6tGStg+6cnYA8iHSf2H154pJPjweb3CQdKo+qHjMoQTHPz4nCqv0WpKSQG70xXO1IQS+J
 UwY77dZegemA==
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="277527970"
Received: from efarji-mobl1.ger.corp.intel.com (HELO [10.251.165.124])
 ([10.251.165.124])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 06:33:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200504044903.7626-3-chris@chris-wilson.co.uk>
 <20200504132239.18740-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4ab7a203-8378-cadb-b52f-322c584b5621@linux.intel.com>
Date: Mon, 4 May 2020 14:33:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504132239.18740-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Implement legacy
 MI_STORE_DATA_IMM
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

Ck9uIDA0LzA1LzIwMjAgMTQ6MjIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgb2xkZXIgYXJj
aGVzIGRpZCBub3QgY29udmVydCBNSV9TVE9SRV9EQVRBX0lNTSB0byB1c2luZyB0aGUgR1RULCBi
dXQKPiBsZWZ0IHRoZW0gd3JpdGluZyB0byBhIHBoeXNpY2FsIGFkZHJlc3MuIFRoZSBub3RlcyBz
dWdnZXN0IHRoYXQgdGhlCj4gcHJpbWFyeSByZWFzb24gd291bGQgYmUgc28gdGhhdCB0aGUgd3Jp
dGVzIHdlcmUgY2FjaGUgY29oZXJlbnQsIGFzIHRoZQo+IENQVSBjYWNoZSB1c2VzIHBoeXNpY2Fs
IHRhZ2dpbmcuIEFzIHN1Y2ggd2UgZGlkIG5vdCBpbXBsZW1lbnQgdGhlCj4gbGVnYWN5IHZhcmlh
bnQgb2YgTUlfU1RPUkVfREFUQV9JTU0gYW5kIHNvIGxlZnQgYWxsIHRoZSByZWxvY2F0aW9ucwo+
IHN5bmNocm9ub3VzIC0tIGJ1dCB3aXRoIGEgc21hbGwgZnVuY3Rpb24gdG8gY29udmVydCBmcm9t
IHRoZSB2bWEgYWRkcmVzcwo+IGludG8gdGhlIHBoeXNpY2FsIGFkZHJlc3MsIHdlIGNhbiBpbXBs
ZW1lbnQgYXN5bmNocm9ub3VzIHJlbG9jcyBvbiB0aGVzZQo+IG9sZGVyIGFyY2hlcywgZml4aW5n
IHVwIGEgZmV3IHRlc3RzIHRoYXQgcmVxdWlyZSB0aGVtLgo+IAo+IEluIG9yZGVyIHRvIGJlIGFi
bGUgdG8gdGVzdCB0aGUgbGVnYWN5IHBhdGhzLCByZWZhY3RvciB0aGUgZ3B1Cj4gcmVsb2NhdGlv
bnMgc28gdGhhdCB3ZSBjYW4gaG9vayB0aGVtIHVwIHRvIGEgc2VsZnRlc3QuCj4gCj4gdjI6IFVz
ZSBhbiBhcnJheSBvZiBvZmZzZXRzIG5vdCBlbnVtIGxhYmVscyBmb3IgdGhlIHNlbGZ0ZXN0Cj4g
djM6IFJlZmFjdG9yIHRoZSBjb21tb24gaWd0X2hleGR1bXAoKQo+IAo+IENsb3NlczogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy83NTcKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIC4uLi9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDIwNCArKysrKysrKysrKy0t
LS0tLS0KPiAgIC4uLi9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY2xpZW50X2JsdC5jICB8
ICAzMSArLS0KPiAgIC4uLi9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZXhlY2J1ZmZlci5j
ICB8IDE3MSArKysrKysrKysrKysrKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X2xyYy5jICAgICAgICB8ICAzMyArLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
c2VsZnRlc3QuaCAgICAgICAgICB8ICAgMiArCj4gICAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfbGl2ZV9zZWxmdGVzdHMuaCAgfCAgIDEgKwo+ICAgLi4uL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV9zZWxmdGVzdC5jICAgIHwgIDI5ICsrKwo+ICAgNyBmaWxlcyBjaGFuZ2VkLCAzMzYg
aW5zZXJ0aW9ucygrKSwgMTM1IGRlbGV0aW9ucygtKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4g
aW5kZXggMWMyNDdhZDA5NzFhLi45NjY1MjNhODUwM2YgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiBAQCAtOTU1LDcgKzk1NSw3IEBA
IHN0YXRpYyB2b2lkIHJlbG9jX2NhY2hlX2luaXQoc3RydWN0IHJlbG9jX2NhY2hlICpjYWNoZSwK
PiAgIAljYWNoZS0+bmVlZHNfdW5mZW5jZWQgPSBJTlRFTF9JTkZPKGk5MTUpLT51bmZlbmNlZF9u
ZWVkc19hbGlnbm1lbnQ7Cj4gICAJY2FjaGUtPm5vZGUuZmxhZ3MgPSAwOwo+ICAgCWNhY2hlLT5y
cSA9IE5VTEw7Cj4gLQljYWNoZS0+cnFfc2l6ZSA9IDA7Cj4gKwljYWNoZS0+dGFyZ2V0ID0gTlVM
TDsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGlubGluZSB2b2lkICp1bm1hc2tfcGFnZSh1bnNpZ25l
ZCBsb25nIHApCj4gQEAgLTEzMjUsNyArMTMyNSw3IEBAIHN0YXRpYyBpbnQgX19yZWxvY19ncHVf
YWxsb2Moc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4gICAKPiAgIAkJY2UgPSBpbnRlbF9j
b250ZXh0X2NyZWF0ZShlbmdpbmUpOwo+ICAgCQlpZiAoSVNfRVJSKGNlKSkgewo+IC0JCQllcnIg
PSBQVFJfRVJSKHJxKTsKPiArCQkJZXJyID0gUFRSX0VSUihjZSk7Cj4gICAJCQlnb3RvIGVycl91
bnBpbjsKPiAgIAkJfQo+ICAgCj4gQEAgLTEzNzYsNiArMTM3NiwxMSBAQCBzdGF0aWMgaW50IF9f
cmVsb2NfZ3B1X2FsbG9jKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAo+ICAgCXJldHVybiBl
cnI7Cj4gICB9Cj4gICAKPiArc3RhdGljIGJvb2wgcmVsb2NfY2FuX3VzZV9lbmdpbmUoY29uc3Qg
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICt7Cj4gKwlyZXR1cm4gZW5naW5lLT5j
bGFzcyAhPSBWSURFT19ERUNPREVfQ0xBU1MgfHwgIUlTX0dFTihlbmdpbmUtPmk5MTUsIDYpOwo+
ICt9Cj4gKwo+ICAgc3RhdGljIHUzMiAqcmVsb2NfZ3B1KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIg
KmViLAo+ICAgCQkgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKPiAgIAkJICAgICAgdW5zaWdu
ZWQgaW50IGxlbikKPiBAQCAtMTM4Nyw5ICsxMzkyLDkgQEAgc3RhdGljIHUzMiAqcmVsb2NfZ3B1
KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAo+ICAgCWlmICh1bmxpa2VseSghY2FjaGUtPnJx
KSkgewo+ICAgCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBlYi0+ZW5naW5lOwo+
ICAgCj4gLQkJaWYgKCFpbnRlbF9lbmdpbmVfY2FuX3N0b3JlX2R3b3JkKGVuZ2luZSkpIHsKPiAr
CQlpZiAoIXJlbG9jX2Nhbl91c2VfZW5naW5lKGVuZ2luZSkpIHsKPiAgIAkJCWVuZ2luZSA9IGVu
Z2luZS0+Z3QtPmVuZ2luZV9jbGFzc1tDT1BZX0VOR0lORV9DTEFTU11bMF07Cj4gLQkJCWlmICgh
ZW5naW5lIHx8ICFpbnRlbF9lbmdpbmVfY2FuX3N0b3JlX2R3b3JkKGVuZ2luZSkpCj4gKwkJCWlm
ICghZW5naW5lKQo+ICAgCQkJCXJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwo+ICAgCQl9Cj4gICAK
PiBAQCAtMTQzNSw5MSArMTQ0MCwxMzggQEAgc3RhdGljIGlubGluZSBib29sIHVzZV9yZWxvY19n
cHUoc3RydWN0IGk5MTVfdm1hICp2bWEpCj4gICAJcmV0dXJuICFkbWFfcmVzdl90ZXN0X3NpZ25h
bGVkX3JjdSh2bWEtPnJlc3YsIHRydWUpOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyB1NjQKPiAtcmVs
b2NhdGVfZW50cnkoc3RydWN0IGk5MTVfdm1hICp2bWEsCj4gLQkgICAgICAgY29uc3Qgc3RydWN0
IGRybV9pOTE1X2dlbV9yZWxvY2F0aW9uX2VudHJ5ICpyZWxvYywKPiAtCSAgICAgICBzdHJ1Y3Qg
aTkxNV9leGVjYnVmZmVyICplYiwKPiAtCSAgICAgICBjb25zdCBzdHJ1Y3QgaTkxNV92bWEgKnRh
cmdldCkKPiArc3RhdGljIHVuc2lnbmVkIGxvbmcgdm1hX3BoeXNfYWRkcihzdHJ1Y3QgaTkxNV92
bWEgKnZtYSwgdTMyIG9mZnNldCkKPiAgIHsKPiAtCXU2NCBvZmZzZXQgPSByZWxvYy0+b2Zmc2V0
Owo+IC0JdTY0IHRhcmdldF9vZmZzZXQgPSByZWxvY2F0aW9uX3RhcmdldChyZWxvYywgdGFyZ2V0
KTsKPiAtCWJvb2wgd2lkZSA9IGViLT5yZWxvY19jYWNoZS51c2VfNjRiaXRfcmVsb2M7Cj4gLQl2
b2lkICp2YWRkcjsKPiArCXN0cnVjdCBwYWdlICpwYWdlOwo+ICsJdW5zaWduZWQgbG9uZyBhZGRy
Owo+ICAgCj4gLQlpZiAoIWViLT5yZWxvY19jYWNoZS52YWRkciAmJiB1c2VfcmVsb2NfZ3B1KHZt
YSkpIHsKPiAtCQljb25zdCB1bnNpZ25lZCBpbnQgZ2VuID0gZWItPnJlbG9jX2NhY2hlLmdlbjsK
PiAtCQl1bnNpZ25lZCBpbnQgbGVuOwo+IC0JCXUzMiAqYmF0Y2g7Cj4gLQkJdTY0IGFkZHI7Cj4g
KwlHRU1fQlVHX09OKHZtYS0+cGFnZXMgIT0gdm1hLT5vYmotPm1tLnBhZ2VzKTsKPiAgIAo+IC0J
CWlmICh3aWRlKQo+IC0JCQlsZW4gPSBvZmZzZXQgJiA3ID8gOCA6IDU7Cj4gLQkJZWxzZSBpZiAo
Z2VuID49IDQpCj4gLQkJCWxlbiA9IDQ7Cj4gLQkJZWxzZQo+IC0JCQlsZW4gPSAzOwo+ICsJcGFn
ZSA9IGk5MTVfZ2VtX29iamVjdF9nZXRfcGFnZSh2bWEtPm9iaiwgb2Zmc2V0ID4+IFBBR0VfU0hJ
RlQpOwo+ICsJYWRkciA9IFBGTl9QSFlTKHBhZ2VfdG9fcGZuKHBhZ2UpKTsKPiArCUdFTV9CVUdf
T04ob3ZlcmZsb3dzX3R5cGUoYWRkciwgdTMyKSk7IC8qIGV4cGVjdGVkIGRtYTMyICovCj4gICAK
PiAtCQliYXRjaCA9IHJlbG9jX2dwdShlYiwgdm1hLCBsZW4pOwo+IC0JCWlmIChJU19FUlIoYmF0
Y2gpKQo+IC0JCQlnb3RvIHJlcGVhdDsKPiArCXJldHVybiBhZGRyICsgb2Zmc2V0X2luX3BhZ2Uo
b2Zmc2V0KTsKPiArfQo+ICsKPiArc3RhdGljIGJvb2wgX19yZWxvY19lbnRyeV9ncHUoc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4gKwkJCSAgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAo+
ICsJCQkgICAgICB1NjQgb2Zmc2V0LAo+ICsJCQkgICAgICB1NjQgdGFyZ2V0X2FkZHIpCj4gK3sK
PiArCWNvbnN0IHVuc2lnbmVkIGludCBnZW4gPSBlYi0+cmVsb2NfY2FjaGUuZ2VuOwo+ICsJdW5z
aWduZWQgaW50IGxlbjsKPiArCXUzMiAqYmF0Y2g7Cj4gKwl1NjQgYWRkcjsKPiArCj4gKwlpZiAo
Z2VuID49IDgpCj4gKwkJbGVuID0gb2Zmc2V0ICYgNyA/IDggOiA1Owo+ICsJZWxzZSBpZiAoZ2Vu
ID49IDQpCj4gKwkJbGVuID0gNDsKPiArCWVsc2UKPiArCQlsZW4gPSAzOwo+ICsKPiArCWJhdGNo
ID0gcmVsb2NfZ3B1KGViLCB2bWEsIGxlbik7Cj4gKwlpZiAoSVNfRVJSKGJhdGNoKSkKPiArCQly
ZXR1cm4gZmFsc2U7Cj4gKwo+ICsJYWRkciA9IGdlbjhfY2Fub25pY2FsX2FkZHIodm1hLT5ub2Rl
LnN0YXJ0ICsgb2Zmc2V0KTsKPiArCWlmIChnZW4gPj0gOCkgewo+ICsJCWlmIChvZmZzZXQgJiA3
KSB7Cj4gKwkJCSpiYXRjaCsrID0gTUlfU1RPUkVfRFdPUkRfSU1NX0dFTjQ7Cj4gKwkJCSpiYXRj
aCsrID0gbG93ZXJfMzJfYml0cyhhZGRyKTsKPiArCQkJKmJhdGNoKysgPSB1cHBlcl8zMl9iaXRz
KGFkZHIpOwo+ICsJCQkqYmF0Y2grKyA9IGxvd2VyXzMyX2JpdHModGFyZ2V0X2FkZHIpOwo+ICsK
PiArCQkJYWRkciA9IGdlbjhfY2Fub25pY2FsX2FkZHIoYWRkciArIDQpOwo+ICAgCj4gLQkJYWRk
ciA9IGdlbjhfY2Fub25pY2FsX2FkZHIodm1hLT5ub2RlLnN0YXJ0ICsgb2Zmc2V0KTsKPiAtCQlp
ZiAod2lkZSkgewo+IC0JCQlpZiAob2Zmc2V0ICYgNykgewo+IC0JCQkJKmJhdGNoKysgPSBNSV9T
VE9SRV9EV09SRF9JTU1fR0VONDsKPiAtCQkJCSpiYXRjaCsrID0gbG93ZXJfMzJfYml0cyhhZGRy
KTsKPiAtCQkJCSpiYXRjaCsrID0gdXBwZXJfMzJfYml0cyhhZGRyKTsKPiAtCQkJCSpiYXRjaCsr
ID0gbG93ZXJfMzJfYml0cyh0YXJnZXRfb2Zmc2V0KTsKPiAtCj4gLQkJCQlhZGRyID0gZ2VuOF9j
YW5vbmljYWxfYWRkcihhZGRyICsgNCk7Cj4gLQo+IC0JCQkJKmJhdGNoKysgPSBNSV9TVE9SRV9E
V09SRF9JTU1fR0VONDsKPiAtCQkJCSpiYXRjaCsrID0gbG93ZXJfMzJfYml0cyhhZGRyKTsKPiAt
CQkJCSpiYXRjaCsrID0gdXBwZXJfMzJfYml0cyhhZGRyKTsKPiAtCQkJCSpiYXRjaCsrID0gdXBw
ZXJfMzJfYml0cyh0YXJnZXRfb2Zmc2V0KTsKPiAtCQkJfSBlbHNlIHsKPiAtCQkJCSpiYXRjaCsr
ID0gKE1JX1NUT1JFX0RXT1JEX0lNTV9HRU40IHwgKDEgPDwgMjEpKSArIDE7Cj4gLQkJCQkqYmF0
Y2grKyA9IGxvd2VyXzMyX2JpdHMoYWRkcik7Cj4gLQkJCQkqYmF0Y2grKyA9IHVwcGVyXzMyX2Jp
dHMoYWRkcik7Cj4gLQkJCQkqYmF0Y2grKyA9IGxvd2VyXzMyX2JpdHModGFyZ2V0X29mZnNldCk7
Cj4gLQkJCQkqYmF0Y2grKyA9IHVwcGVyXzMyX2JpdHModGFyZ2V0X29mZnNldCk7Cj4gLQkJCX0K
PiAtCQl9IGVsc2UgaWYgKGdlbiA+PSA2KSB7Cj4gICAJCQkqYmF0Y2grKyA9IE1JX1NUT1JFX0RX
T1JEX0lNTV9HRU40Owo+IC0JCQkqYmF0Y2grKyA9IDA7Cj4gLQkJCSpiYXRjaCsrID0gYWRkcjsK
PiAtCQkJKmJhdGNoKysgPSB0YXJnZXRfb2Zmc2V0Owo+IC0JCX0gZWxzZSBpZiAoZ2VuID49IDQp
IHsKPiAtCQkJKmJhdGNoKysgPSBNSV9TVE9SRV9EV09SRF9JTU1fR0VONCB8IE1JX1VTRV9HR1RU
Owo+IC0JCQkqYmF0Y2grKyA9IDA7Cj4gLQkJCSpiYXRjaCsrID0gYWRkcjsKPiAtCQkJKmJhdGNo
KysgPSB0YXJnZXRfb2Zmc2V0Owo+ICsJCQkqYmF0Y2grKyA9IGxvd2VyXzMyX2JpdHMoYWRkcik7
Cj4gKwkJCSpiYXRjaCsrID0gdXBwZXJfMzJfYml0cyhhZGRyKTsKPiArCQkJKmJhdGNoKysgPSB1
cHBlcl8zMl9iaXRzKHRhcmdldF9hZGRyKTsKPiAgIAkJfSBlbHNlIHsKPiAtCQkJKmJhdGNoKysg
PSBNSV9TVE9SRV9EV09SRF9JTU0gfCBNSV9NRU1fVklSVFVBTDsKPiAtCQkJKmJhdGNoKysgPSBh
ZGRyOwo+IC0JCQkqYmF0Y2grKyA9IHRhcmdldF9vZmZzZXQ7Cj4gKwkJCSpiYXRjaCsrID0gKE1J
X1NUT1JFX0RXT1JEX0lNTV9HRU40IHwgKDEgPDwgMjEpKSArIDE7Cj4gKwkJCSpiYXRjaCsrID0g
bG93ZXJfMzJfYml0cyhhZGRyKTsKPiArCQkJKmJhdGNoKysgPSB1cHBlcl8zMl9iaXRzKGFkZHIp
Owo+ICsJCQkqYmF0Y2grKyA9IGxvd2VyXzMyX2JpdHModGFyZ2V0X2FkZHIpOwo+ICsJCQkqYmF0
Y2grKyA9IHVwcGVyXzMyX2JpdHModGFyZ2V0X2FkZHIpOwo+ICAgCQl9Cj4gLQo+IC0JCWdvdG8g
b3V0Owo+ICsJfSBlbHNlIGlmIChnZW4gPj0gNikgewo+ICsJCSpiYXRjaCsrID0gTUlfU1RPUkVf
RFdPUkRfSU1NX0dFTjQ7Cj4gKwkJKmJhdGNoKysgPSAwOwo+ICsJCSpiYXRjaCsrID0gYWRkcjsK
PiArCQkqYmF0Y2grKyA9IHRhcmdldF9hZGRyOwo+ICsJfSBlbHNlIGlmIChJU19JOTY1RyhlYi0+
aTkxNSkpIHsKPiArCQkqYmF0Y2grKyA9IE1JX1NUT1JFX0RXT1JEX0lNTV9HRU40Owo+ICsJCSpi
YXRjaCsrID0gMDsKPiArCQkqYmF0Y2grKyA9IHZtYV9waHlzX2FkZHIodm1hLCBvZmZzZXQpOwo+
ICsJCSpiYXRjaCsrID0gdGFyZ2V0X2FkZHI7Cj4gKwl9IGVsc2UgaWYgKGdlbiA+PSA0KSB7Cj4g
KwkJKmJhdGNoKysgPSBNSV9TVE9SRV9EV09SRF9JTU1fR0VONCB8IE1JX1VTRV9HR1RUOwo+ICsJ
CSpiYXRjaCsrID0gMDsKPiArCQkqYmF0Y2grKyA9IGFkZHI7Cj4gKwkJKmJhdGNoKysgPSB0YXJn
ZXRfYWRkcjsKPiArCX0gZWxzZSBpZiAoZ2VuID49IDMgJiYKPiArCQkgICAhKElTX0k5MTVHKGVi
LT5pOTE1KSB8fCBJU19JOTE1R00oZWItPmk5MTUpKSkgewo+ICsJCSpiYXRjaCsrID0gTUlfU1RP
UkVfRFdPUkRfSU1NIHwgTUlfTUVNX1ZJUlRVQUw7Cj4gKwkJKmJhdGNoKysgPSBhZGRyOwo+ICsJ
CSpiYXRjaCsrID0gdGFyZ2V0X2FkZHI7Cj4gKwl9IGVsc2Ugewo+ICsJCSpiYXRjaCsrID0gTUlf
U1RPUkVfRFdPUkRfSU1NOwo+ICsJCSpiYXRjaCsrID0gdm1hX3BoeXNfYWRkcih2bWEsIG9mZnNl
dCk7Cj4gKwkJKmJhdGNoKysgPSB0YXJnZXRfYWRkcjsKPiAgIAl9Cj4gICAKPiArCXJldHVybiB0
cnVlOwo+ICt9Cj4gKwo+ICtzdGF0aWMgYm9vbCByZWxvY19lbnRyeV9ncHUoc3RydWN0IGk5MTVf
ZXhlY2J1ZmZlciAqZWIsCj4gKwkJCSAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKPiArCQkJICAg
IHU2NCBvZmZzZXQsCj4gKwkJCSAgICB1NjQgdGFyZ2V0X2FkZHIpCj4gK3sKPiArCWlmIChlYi0+
cmVsb2NfY2FjaGUudmFkZHIpCj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsKPiArCWlmICghdXNlX3Jl
bG9jX2dwdSh2bWEpKQo+ICsJCXJldHVybiBmYWxzZTsKPiArCj4gKwlyZXR1cm4gX19yZWxvY19l
bnRyeV9ncHUoZWIsIHZtYSwgb2Zmc2V0LCB0YXJnZXRfYWRkcik7Cj4gK30KPiArCj4gK3N0YXRp
YyB1NjQKPiArcmVsb2NhdGVfZW50cnkoc3RydWN0IGk5MTVfdm1hICp2bWEsCj4gKwkgICAgICAg
Y29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9yZWxvY2F0aW9uX2VudHJ5ICpyZWxvYywKPiArCSAg
ICAgICBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKPiArCSAgICAgICBjb25zdCBzdHJ1Y3Qg
aTkxNV92bWEgKnRhcmdldCkKPiArewo+ICsJdTY0IHRhcmdldF9hZGRyID0gcmVsb2NhdGlvbl90
YXJnZXQocmVsb2MsIHRhcmdldCk7Cj4gKwl1NjQgb2Zmc2V0ID0gcmVsb2MtPm9mZnNldDsKPiAr
Cj4gKwlpZiAoIXJlbG9jX2VudHJ5X2dwdShlYiwgdm1hLCBvZmZzZXQsIHRhcmdldF9hZGRyKSkg
ewo+ICsJCWJvb2wgd2lkZSA9IGViLT5yZWxvY19jYWNoZS51c2VfNjRiaXRfcmVsb2M7Cj4gKwkJ
dm9pZCAqdmFkZHI7Cj4gKwo+ICAgcmVwZWF0Ogo+IC0JdmFkZHIgPSByZWxvY192YWRkcih2bWEt
Pm9iaiwgJmViLT5yZWxvY19jYWNoZSwgb2Zmc2V0ID4+IFBBR0VfU0hJRlQpOwo+IC0JaWYgKElT
X0VSUih2YWRkcikpCj4gLQkJcmV0dXJuIFBUUl9FUlIodmFkZHIpOwo+ICsJCXZhZGRyID0gcmVs
b2NfdmFkZHIodm1hLT5vYmosCj4gKwkJCQkgICAgJmViLT5yZWxvY19jYWNoZSwKPiArCQkJCSAg
ICBvZmZzZXQgPj4gUEFHRV9TSElGVCk7Cj4gKwkJaWYgKElTX0VSUih2YWRkcikpCj4gKwkJCXJl
dHVybiBQVFJfRVJSKHZhZGRyKTsKPiAgIAo+IC0JY2xmbHVzaF93cml0ZTMyKHZhZGRyICsgb2Zm
c2V0X2luX3BhZ2Uob2Zmc2V0KSwKPiAtCQkJbG93ZXJfMzJfYml0cyh0YXJnZXRfb2Zmc2V0KSwK
PiAtCQkJZWItPnJlbG9jX2NhY2hlLnZhZGRyKTsKPiArCQlHRU1fQlVHX09OKCFJU19BTElHTkVE
KG9mZnNldCwgc2l6ZW9mKHUzMikpKTsKPiArCQljbGZsdXNoX3dyaXRlMzIodmFkZHIgKyBvZmZz
ZXRfaW5fcGFnZShvZmZzZXQpLAo+ICsJCQkJbG93ZXJfMzJfYml0cyh0YXJnZXRfYWRkciksCj4g
KwkJCQllYi0+cmVsb2NfY2FjaGUudmFkZHIpOwo+ICAgCj4gLQlpZiAod2lkZSkgewo+IC0JCW9m
ZnNldCArPSBzaXplb2YodTMyKTsKPiAtCQl0YXJnZXRfb2Zmc2V0ID4+PSAzMjsKPiAtCQl3aWRl
ID0gZmFsc2U7Cj4gLQkJZ290byByZXBlYXQ7Cj4gKwkJaWYgKHdpZGUpIHsKPiArCQkJb2Zmc2V0
ICs9IHNpemVvZih1MzIpOwo+ICsJCQl0YXJnZXRfYWRkciA+Pj0gMzI7Cj4gKwkJCXdpZGUgPSBm
YWxzZTsKPiArCQkJZ290byByZXBlYXQ7Cj4gKwkJfQo+ICAgCX0KPiAgIAo+IC1vdXQ6Cj4gICAJ
cmV0dXJuIHRhcmdldC0+bm9kZS5zdGFydCB8IFVQREFURTsKPiAgIH0KPiAgIAo+IEBAIC0zMDIy
LDMgKzMwNzQsNyBAQCBlbmQ6Owo+ICAgCWt2ZnJlZShleGVjMl9saXN0KTsKPiAgIAlyZXR1cm4g
ZXJyOwo+ICAgfQo+ICsKPiArI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X1NFTEZURVNU
KQo+ICsjaW5jbHVkZSAic2VsZnRlc3RzL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyIKPiArI2VuZGlm
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jbGllbnRfYmx0LmMKPiBpbmRleCBiZTI2ODUxMWNiNmQuLjhmZTNhZDJlZTM0ZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2Ns
aWVudF9ibHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fY2xpZW50X2JsdC5jCj4gQEAgLTMwMiwzNSArMzAyLDYgQEAgc3RhdGljIHZvaWQgZmls
bF9zY3JhdGNoKHN0cnVjdCB0aWxlZF9ibGl0cyAqdCwgdTMyICp2YWRkciwgdTMyIHZhbCkKPiAg
IAlpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKHQtPnNjcmF0Y2gudm1hLT5vYmopOwo+ICAgfQo+
ICAgCj4gLXN0YXRpYyB2b2lkIGhleGR1bXAoY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgbGVuKQo+
IC17Cj4gLQljb25zdCBzaXplX3Qgcm93c2l6ZSA9IDggKiBzaXplb2YodTMyKTsKPiAtCWNvbnN0
IHZvaWQgKnByZXYgPSBOVUxMOwo+IC0JYm9vbCBza2lwID0gZmFsc2U7Cj4gLQlzaXplX3QgcG9z
Owo+IC0KPiAtCWZvciAocG9zID0gMDsgcG9zIDwgbGVuOyBwb3MgKz0gcm93c2l6ZSkgewo+IC0J
CWNoYXIgbGluZVsxMjhdOwo+IC0KPiAtCQlpZiAocHJldiAmJiAhbWVtY21wKHByZXYsIGJ1ZiAr
IHBvcywgcm93c2l6ZSkpIHsKPiAtCQkJaWYgKCFza2lwKSB7Cj4gLQkJCQlwcl9pbmZvKCIqXG4i
KTsKPiAtCQkJCXNraXAgPSB0cnVlOwo+IC0JCQl9Cj4gLQkJCWNvbnRpbnVlOwo+IC0JCX0KPiAt
Cj4gLQkJV0FSTl9PTl9PTkNFKGhleF9kdW1wX3RvX2J1ZmZlcihidWYgKyBwb3MsIGxlbiAtIHBv
cywKPiAtCQkJCQkJcm93c2l6ZSwgc2l6ZW9mKHUzMiksCj4gLQkJCQkJCWxpbmUsIHNpemVvZihs
aW5lKSwKPiAtCQkJCQkJZmFsc2UpID49IHNpemVvZihsaW5lKSk7Cj4gLQkJcHJfaW5mbygiWyUw
NHp4XSAlc1xuIiwgcG9zLCBsaW5lKTsKPiAtCj4gLQkJcHJldiA9IGJ1ZiArIHBvczsKPiAtCQlz
a2lwID0gZmFsc2U7Cj4gLQl9Cj4gLX0KPiAtCj4gICBzdGF0aWMgdTY0IHN3aXp6bGVfYml0KHVu
c2lnbmVkIGludCBiaXQsIHU2NCBvZmZzZXQpCj4gICB7Cj4gICAJcmV0dXJuIChvZmZzZXQgJiBC
SVRfVUxMKGJpdCkpID4+IChiaXQgLSA2KTsKPiBAQCAtNDI2LDcgKzM5Nyw3IEBAIHN0YXRpYyBp
bnQgdmVyaWZ5X2J1ZmZlcihjb25zdCBzdHJ1Y3QgdGlsZWRfYmxpdHMgKnQsCj4gICAJCXByX2Vy
cigiSW52YWxpZCAlcyB0aWxpbmcgZGV0ZWN0ZWQgYXQgKCVkLCAlZCksIHN0YXJ0X3ZhbCAleFxu
IiwKPiAgIAkJICAgICAgIHJlcHJfdGlsaW5nKGJ1Zi0+dGlsaW5nKSwKPiAgIAkJICAgICAgIHgs
IHksIGJ1Zi0+c3RhcnRfdmFsKTsKPiAtCQloZXhkdW1wKHZhZGRyLCA0MDk2KTsKPiArCQlpZ3Rf
aGV4ZHVtcCh2YWRkciwgNDA5Nik7Cj4gICAJfQo+ICAgCj4gICAJaTkxNV9nZW1fb2JqZWN0X3Vu
cGluX21hcChidWYtPnZtYS0+b2JqKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5hNDkwMTZmOGVlMGQKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9leGVj
YnVmZmVyLmMKPiBAQCAtMCwwICsxLDE3MSBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogTUlUCj4gKy8qCj4gKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCj4g
KyAqLwo+ICsKPiArI2luY2x1ZGUgImk5MTVfc2VsZnRlc3QuaCIKPiArCj4gKyNpbmNsdWRlICJn
dC9pbnRlbF9lbmdpbmVfcG0uaCIKPiArI2luY2x1ZGUgInNlbGZ0ZXN0cy9pZ3RfZmx1c2hfdGVz
dC5oIgo+ICsKPiArc3RhdGljIHU2NCByZWFkX3JlbG9jKGNvbnN0IHUzMiAqbWFwLCBpbnQgeCwg
Y29uc3QgdTY0IG1hc2spCj4gK3sKPiArCXU2NCByZWxvYzsKPiArCj4gKwltZW1jcHkoJnJlbG9j
LCAmbWFwW3hdLCBzaXplb2YocmVsb2MpKTsKPiArCXJldHVybiByZWxvYyAmIG1hc2s7Cj4gK30K
PiArCj4gK3N0YXRpYyBpbnQgX19pZ3RfZ3B1X3JlbG9jKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIg
KmViLAo+ICsJCQkgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ICt7Cj4gKwlj
b25zdCB1bnNpZ25lZCBpbnQgb2Zmc2V0c1tdID0geyA4LCAzLCAwIH07Cj4gKwljb25zdCB1NjQg
bWFzayA9Cj4gKwkJR0VOTUFTS19VTEwoZWItPnJlbG9jX2NhY2hlLnVzZV82NGJpdF9yZWxvYyA/
IDYzIDogMzEsIDApOwo+ICsJY29uc3QgdTMyICptYXAgPSBwYWdlX21hc2tfYml0cyhvYmotPm1t
Lm1hcHBpbmcpOwo+ICsJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4gKwlzdHJ1Y3QgaTkxNV92
bWEgKnZtYTsKPiArCWludCBlcnI7Cj4gKwlpbnQgaTsKPiArCj4gKwl2bWEgPSBpOTE1X3ZtYV9p
bnN0YW5jZShvYmosIGViLT5jb250ZXh0LT52bSwgTlVMTCk7Cj4gKwlpZiAoSVNfRVJSKHZtYSkp
Cj4gKwkJcmV0dXJuIFBUUl9FUlIodm1hKTsKPiArCj4gKwllcnIgPSBpOTE1X3ZtYV9waW4odm1h
LCAwLCAwLCBQSU5fVVNFUiB8IFBJTl9ISUdIKTsKPiArCWlmIChlcnIpCj4gKwkJcmV0dXJuIGVy
cjsKPiArCj4gKwkvKiA4LUJ5dGUgYWxpZ25lZCAqLwo+ICsJaWYgKCFfX3JlbG9jX2VudHJ5X2dw
dShlYiwgdm1hLAo+ICsJCQkgICAgICAgb2Zmc2V0c1swXSAqIHNpemVvZih1MzIpLAo+ICsJCQkg
ICAgICAgMCkpIHsKPiArCQllcnIgPSAtRUlPOwo+ICsJCWdvdG8gdW5waW5fdm1hOwo+ICsJfQo+
ICsKPiArCS8qICE4LUJ5dGUgYWxpZ25lZCAqLwo+ICsJaWYgKCFfX3JlbG9jX2VudHJ5X2dwdShl
Yiwgdm1hLAo+ICsJCQkgICAgICAgb2Zmc2V0c1sxXSAqIHNpemVvZih1MzIpLAo+ICsJCQkgICAg
ICAgMSkpIHsKPiArCQllcnIgPSAtRUlPOwo+ICsJCWdvdG8gdW5waW5fdm1hOwo+ICsJfQo+ICsK
PiArCS8qIFNraXAgdG8gdGhlIGVuZCBvZiB0aGUgY21kIHBhZ2UgKi8KPiArCWkgPSBQQUdFX1NJ
WkUgLyBzaXplb2YodTMyKSAtIFJFTE9DX1RBSUwgLSAxOwo+ICsJaSAtPSBlYi0+cmVsb2NfY2Fj
aGUucnFfc2l6ZTsKPiArCW1lbXNldDMyKGViLT5yZWxvY19jYWNoZS5ycV9jbWQgKyBlYi0+cmVs
b2NfY2FjaGUucnFfc2l6ZSwKPiArCQkgTUlfTk9PUCwgaSk7Cj4gKwllYi0+cmVsb2NfY2FjaGUu
cnFfc2l6ZSArPSBpOwo+ICsKPiArCS8qIEZvcmNlIGJhdGNoIGNoYWluaW5nICovCj4gKwlpZiAo
IV9fcmVsb2NfZW50cnlfZ3B1KGViLCB2bWEsCj4gKwkJCSAgICAgICBvZmZzZXRzWzJdICogc2l6
ZW9mKHUzMiksCj4gKwkJCSAgICAgICAyKSkgewo+ICsJCWVyciA9IC1FSU87Cj4gKwkJZ290byB1
bnBpbl92bWE7Cj4gKwl9Cj4gKwo+ICsJR0VNX0JVR19PTighZWItPnJlbG9jX2NhY2hlLnJxKTsK
PiArCXJxID0gaTkxNV9yZXF1ZXN0X2dldChlYi0+cmVsb2NfY2FjaGUucnEpOwo+ICsJZXJyID0g
cmVsb2NfZ3B1X2ZsdXNoKCZlYi0+cmVsb2NfY2FjaGUpOwo+ICsJaWYgKGVycikKPiArCQlnb3Rv
IHB1dF9ycTsKPiArCUdFTV9CVUdfT04oZWItPnJlbG9jX2NhY2hlLnJxKTsKPiArCj4gKwllcnIg
PSBpOTE1X2dlbV9vYmplY3Rfd2FpdChvYmosIEk5MTVfV0FJVF9JTlRFUlJVUFRJQkxFLCBIWiAv
IDIpOwo+ICsJaWYgKGVycikgewo+ICsJCWludGVsX2d0X3NldF93ZWRnZWQoZWItPmVuZ2luZS0+
Z3QpOwo+ICsJCWdvdG8gcHV0X3JxOwo+ICsJfQo+ICsKPiArCWlmICghaTkxNV9yZXF1ZXN0X2Nv
bXBsZXRlZChycSkpIHsKPiArCQlwcl9lcnIoIiVzOiBkaWQgbm90IHdhaXQgZm9yIHJlbG9jYXRp
b25zIVxuIiwgZWItPmVuZ2luZS0+bmFtZSk7Cj4gKwkJZXJyID0gLUVJTlZBTDsKPiArCQlnb3Rv
IHB1dF9ycTsKPiArCX0KPiArCj4gKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShvZmZzZXRz
KTsgaSsrKSB7Cj4gKwkJdTY0IHJlbG9jID0gcmVhZF9yZWxvYyhtYXAsIG9mZnNldHNbaV0sIG1h
c2spOwo+ICsKPiArCQlpZiAocmVsb2MgIT0gaSkgewo+ICsJCQlwcl9lcnIoIiVzWyVkXTogbWFw
WyVkXSAlbGx4ICE9ICV4XG4iLAo+ICsJCQkgICAgICAgZWItPmVuZ2luZS0+bmFtZSwgaSwgb2Zm
c2V0c1tpXSwgcmVsb2MsIGkpOwo+ICsJCQllcnIgPSAtRUlOVkFMOwo+ICsJCX0KPiArCX0KPiAr
CWlmIChlcnIpCj4gKwkJaWd0X2hleGR1bXAobWFwLCA0MDk2KTsKPiArCj4gK3B1dF9ycToKPiAr
CWk5MTVfcmVxdWVzdF9wdXQocnEpOwo+ICt1bnBpbl92bWE6Cj4gKwlpOTE1X3ZtYV91bnBpbih2
bWEpOwo+ICsJcmV0dXJuIGVycjsKPiArfQo+ICsKPiArc3RhdGljIGludCBpZ3RfZ3B1X3JlbG9j
KHZvaWQgKmFyZykKPiArewo+ICsJc3RydWN0IGk5MTVfZXhlY2J1ZmZlciBlYjsKPiArCXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpzY3JhdGNoOwo+ICsJaW50IGVyciA9IDA7Cj4gKwl1MzIg
Km1hcDsKPiArCj4gKwllYi5pOTE1ID0gYXJnOwo+ICsKPiArCXNjcmF0Y2ggPSBpOTE1X2dlbV9v
YmplY3RfY3JlYXRlX2ludGVybmFsKGViLmk5MTUsIDQwOTYpOwo+ICsJaWYgKElTX0VSUihzY3Jh
dGNoKSkKPiArCQlyZXR1cm4gUFRSX0VSUihzY3JhdGNoKTsKPiArCj4gKwltYXAgPSBpOTE1X2dl
bV9vYmplY3RfcGluX21hcChzY3JhdGNoLCBJOTE1X01BUF9XQyk7Cj4gKwlpZiAoSVNfRVJSKG1h
cCkpIHsKPiArCQllcnIgPSBQVFJfRVJSKG1hcCk7Cj4gKwkJZ290byBlcnJfc2NyYXRjaDsKPiAr
CX0KPiArCj4gKwlmb3JfZWFjaF91YWJpX2VuZ2luZShlYi5lbmdpbmUsIGViLmk5MTUpIHsKPiAr
CQlyZWxvY19jYWNoZV9pbml0KCZlYi5yZWxvY19jYWNoZSwgZWIuaTkxNSk7Cj4gKwkJbWVtc2V0
KG1hcCwgUE9JU09OX0lOVVNFLCA0MDk2KTsKPiArCj4gKwkJaW50ZWxfZW5naW5lX3BtX2dldChl
Yi5lbmdpbmUpOwo+ICsJCWViLmNvbnRleHQgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZShlYi5lbmdp
bmUpOwo+ICsJCWlmIChJU19FUlIoZWIuY29udGV4dCkpIHsKPiArCQkJZXJyID0gUFRSX0VSUihl
Yi5jb250ZXh0KTsKPiArCQkJZ290byBlcnJfcG07Cj4gKwkJfQo+ICsKPiArCQllcnIgPSBpbnRl
bF9jb250ZXh0X3BpbihlYi5jb250ZXh0KTsKPiArCQlpZiAoZXJyKQo+ICsJCQlnb3RvIGVycl9w
dXQ7Cj4gKwo+ICsJCWVyciA9IF9faWd0X2dwdV9yZWxvYygmZWIsIHNjcmF0Y2gpOwo+ICsKPiAr
CQlpbnRlbF9jb250ZXh0X3VucGluKGViLmNvbnRleHQpOwo+ICtlcnJfcHV0Ogo+ICsJCWludGVs
X2NvbnRleHRfcHV0KGViLmNvbnRleHQpOwo+ICtlcnJfcG06Cj4gKwkJaW50ZWxfZW5naW5lX3Bt
X3B1dChlYi5lbmdpbmUpOwo+ICsJCWlmIChlcnIpCj4gKwkJCWJyZWFrOwo+ICsJfQo+ICsKPiAr
CWlmIChpZ3RfZmx1c2hfdGVzdChlYi5pOTE1KSkKPiArCQllcnIgPSAtRUlPOwo+ICsKPiArZXJy
X3NjcmF0Y2g6Cj4gKwlpOTE1X2dlbV9vYmplY3RfcHV0KHNjcmF0Y2gpOwo+ICsJcmV0dXJuIGVy
cjsKPiArfQo+ICsKPiAraW50IGk5MTVfZ2VtX2V4ZWNidWZmZXJfbGl2ZV9zZWxmdGVzdHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gK3sKPiArCXN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7Cj4gKwkJU1VCVEVTVChpZ3RfZ3B1X3JlbG9jKSwKPiAr
CX07Cj4gKwo+ICsJaWYgKGludGVsX2d0X2lzX3dlZGdlZCgmaTkxNS0+Z3QpKQo+ICsJCXJldHVy
biAwOwo+ICsKPiArCXJldHVybiBpOTE1X2xpdmVfc3VidGVzdHModGVzdHMsIGk5MTUpOwo+ICt9
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKPiBpbmRleCA3NTI5ZGY5MmY2
YTIuLjNjZWQ3MzUzM2Y2YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xy
Yy5jCj4gQEAgLTQzNDIsMzUgKzQzNDIsNiBAQCBpbnQgaW50ZWxfZXhlY2xpc3RzX2xpdmVfc2Vs
ZnRlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgCXJldHVybiBpbnRlbF9n
dF9saXZlX3N1YnRlc3RzKHRlc3RzLCAmaTkxNS0+Z3QpOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyB2
b2lkIGhleGR1bXAoY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgbGVuKQo+IC17Cj4gLQljb25zdCBz
aXplX3Qgcm93c2l6ZSA9IDggKiBzaXplb2YodTMyKTsKPiAtCWNvbnN0IHZvaWQgKnByZXYgPSBO
VUxMOwo+IC0JYm9vbCBza2lwID0gZmFsc2U7Cj4gLQlzaXplX3QgcG9zOwo+IC0KPiAtCWZvciAo
cG9zID0gMDsgcG9zIDwgbGVuOyBwb3MgKz0gcm93c2l6ZSkgewo+IC0JCWNoYXIgbGluZVsxMjhd
Owo+IC0KPiAtCQlpZiAocHJldiAmJiAhbWVtY21wKHByZXYsIGJ1ZiArIHBvcywgcm93c2l6ZSkp
IHsKPiAtCQkJaWYgKCFza2lwKSB7Cj4gLQkJCQlwcl9pbmZvKCIqXG4iKTsKPiAtCQkJCXNraXAg
PSB0cnVlOwo+IC0JCQl9Cj4gLQkJCWNvbnRpbnVlOwo+IC0JCX0KPiAtCj4gLQkJV0FSTl9PTl9P
TkNFKGhleF9kdW1wX3RvX2J1ZmZlcihidWYgKyBwb3MsIGxlbiAtIHBvcywKPiAtCQkJCQkJcm93
c2l6ZSwgc2l6ZW9mKHUzMiksCj4gLQkJCQkJCWxpbmUsIHNpemVvZihsaW5lKSwKPiAtCQkJCQkJ
ZmFsc2UpID49IHNpemVvZihsaW5lKSk7Cj4gLQkJcHJfaW5mbygiWyUwNHp4XSAlc1xuIiwgcG9z
LCBsaW5lKTsKPiAtCj4gLQkJcHJldiA9IGJ1ZiArIHBvczsKPiAtCQlza2lwID0gZmFsc2U7Cj4g
LQl9Cj4gLX0KPiAtCj4gICBzdGF0aWMgaW50IGVtaXRfc2VtYXBob3JlX3NpZ25hbChzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqY2UsIHZvaWQgKnNsb3QpCj4gICB7Cj4gICAJY29uc3QgdTMyIG9mZnNl
dCA9Cj4gQEAgLTQ1MTgsMTAgKzQ0ODksMTAgQEAgc3RhdGljIGludCBsaXZlX2xyY19sYXlvdXQo
dm9pZCAqYXJnKQo+ICAgCj4gICAJCWlmIChlcnIpIHsKPiAgIAkJCXByX2luZm8oIiVzOiBIVyBy
ZWdpc3RlciBpbWFnZTpcbiIsIGVuZ2luZS0+bmFtZSk7Cj4gLQkJCWhleGR1bXAoaHcsIFBBR0Vf
U0laRSk7Cj4gKwkJCWlndF9oZXhkdW1wKGh3LCBQQUdFX1NJWkUpOwo+ICAgCj4gICAJCQlwcl9p
bmZvKCIlczogU1cgcmVnaXN0ZXIgaW1hZ2U6XG4iLCBlbmdpbmUtPm5hbWUpOwo+IC0JCQloZXhk
dW1wKGxyYywgUEFHRV9TSVpFKTsKPiArCQkJaWd0X2hleGR1bXAobHJjLCBQQUdFX1NJWkUpOwo+
ICAgCQl9Cj4gICAKPiAgIAkJc2htZW1fdW5waW5fbWFwKGVuZ2luZS0+ZGVmYXVsdF9zdGF0ZSwg
aHcpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NlbGZ0ZXN0Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NlbGZ0ZXN0LmgKPiBpbmRleCA5OGJjYjZmYTBh
YjQuLmQ1M2QyMDdhYjZlYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3NlbGZ0ZXN0LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NlbGZ0ZXN0LmgK
PiBAQCAtMTMzLDQgKzEzMyw2IEBAIGJvb2wgX19pZ3RfdGltZW91dCh1bnNpZ25lZCBsb25nIHRp
bWVvdXQsIGNvbnN0IGNoYXIgKmZtdCwgLi4uKTsKPiAgICNkZWZpbmUgaWd0X3RpbWVvdXQodCwg
Zm10LCAuLi4pIFwKPiAgIAlfX2lndF90aW1lb3V0KCh0KSwgS0VSTl9ERUJVRyBwcl9mbXQoZm10
KSwgIyNfX1ZBX0FSR1NfXykKPiAgIAo+ICt2b2lkIGlndF9oZXhkdW1wKGNvbnN0IHZvaWQgKmJ1
Ziwgc2l6ZV90IGxlbik7Cj4gKwo+ICAgI2VuZGlmIC8qICFfX0k5MTVfU0VMRlRFU1RfSF9fICov
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVf
c2VsZnRlc3RzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3Nl
bGZ0ZXN0cy5oCj4gaW5kZXggMGE5NTNiZmMwNTg1Li41ZGQ1ZDgxNjQ2YzQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaAo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3Rz
LmgKPiBAQCAtMzcsNiArMzcsNyBAQCBzZWxmdGVzdChnZW0sIGk5MTVfZ2VtX2xpdmVfc2VsZnRl
c3RzKQo+ICAgc2VsZnRlc3QoZXZpY3QsIGk5MTVfZ2VtX2V2aWN0X2xpdmVfc2VsZnRlc3RzKQo+
ICAgc2VsZnRlc3QoaHVnZXBhZ2VzLCBpOTE1X2dlbV9odWdlX3BhZ2VfbGl2ZV9zZWxmdGVzdHMp
Cj4gICBzZWxmdGVzdChnZW1fY29udGV4dHMsIGk5MTVfZ2VtX2NvbnRleHRfbGl2ZV9zZWxmdGVz
dHMpCj4gK3NlbGZ0ZXN0KGdlbV9leGVjYnVmLCBpOTE1X2dlbV9leGVjYnVmZmVyX2xpdmVfc2Vs
ZnRlc3RzKQo+ICAgc2VsZnRlc3QoYmx0LCBpOTE1X2dlbV9vYmplY3RfYmx0X2xpdmVfc2VsZnRl
c3RzKQo+ICAgc2VsZnRlc3QoY2xpZW50LCBpOTE1X2dlbV9jbGllbnRfYmx0X2xpdmVfc2VsZnRl
c3RzKQo+ICAgc2VsZnRlc3QocmVzZXQsIGludGVsX3Jlc2V0X2xpdmVfc2VsZnRlc3RzKQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9zZWxmdGVzdC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2VsZnRlc3QuYwo+IGluZGV4
IGQzYmY5ZWVmYjY4Mi4uMWJjMTFjMDlmYWVmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NlbGZ0ZXN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaTkxNV9zZWxmdGVzdC5jCj4gQEAgLTM5Niw2ICszOTYsMzUgQEAgYm9v
bCBfX2lndF90aW1lb3V0KHVuc2lnbmVkIGxvbmcgdGltZW91dCwgY29uc3QgY2hhciAqZm10LCAu
Li4pCj4gICAJcmV0dXJuIHRydWU7Cj4gICB9Cj4gICAKPiArdm9pZCBpZ3RfaGV4ZHVtcChjb25z
dCB2b2lkICpidWYsIHNpemVfdCBsZW4pCj4gK3sKPiArCWNvbnN0IHNpemVfdCByb3dzaXplID0g
OCAqIHNpemVvZih1MzIpOwo+ICsJY29uc3Qgdm9pZCAqcHJldiA9IE5VTEw7Cj4gKwlib29sIHNr
aXAgPSBmYWxzZTsKPiArCXNpemVfdCBwb3M7Cj4gKwo+ICsJZm9yIChwb3MgPSAwOyBwb3MgPCBs
ZW47IHBvcyArPSByb3dzaXplKSB7Cj4gKwkJY2hhciBsaW5lWzEyOF07Cj4gKwo+ICsJCWlmIChw
cmV2ICYmICFtZW1jbXAocHJldiwgYnVmICsgcG9zLCByb3dzaXplKSkgewo+ICsJCQlpZiAoIXNr
aXApIHsKPiArCQkJCXByX2luZm8oIipcbiIpOwo+ICsJCQkJc2tpcCA9IHRydWU7Cj4gKwkJCX0K
PiArCQkJY29udGludWU7Cj4gKwkJfQo+ICsKPiArCQlXQVJOX09OX09OQ0UoaGV4X2R1bXBfdG9f
YnVmZmVyKGJ1ZiArIHBvcywgbGVuIC0gcG9zLAo+ICsJCQkJCQlyb3dzaXplLCBzaXplb2YodTMy
KSwKPiArCQkJCQkJbGluZSwgc2l6ZW9mKGxpbmUpLAo+ICsJCQkJCQlmYWxzZSkgPj0gc2l6ZW9m
KGxpbmUpKTsKPiArCQlwcl9pbmZvKCJbJTA0enhdICVzXG4iLCBwb3MsIGxpbmUpOwo+ICsKPiAr
CQlwcmV2ID0gYnVmICsgcG9zOwo+ICsJCXNraXAgPSBmYWxzZTsKPiArCX0KPiArfQo+ICsKPiAg
IG1vZHVsZV9wYXJhbV9uYW1lZChzdF9yYW5kb21fc2VlZCwgaTkxNV9zZWxmdGVzdC5yYW5kb21f
c2VlZCwgdWludCwgMDQwMCk7Cj4gICBtb2R1bGVfcGFyYW1fbmFtZWQoc3RfdGltZW91dCwgaTkx
NV9zZWxmdGVzdC50aW1lb3V0X21zLCB1aW50LCAwNDAwKTsKPiAgIG1vZHVsZV9wYXJhbV9uYW1l
ZChzdF9maWx0ZXIsIGk5MTVfc2VsZnRlc3QuZmlsdGVyLCBjaGFycCwgMDQwMCk7Cj4gCgpSZXZp
ZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2Fy
ZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
