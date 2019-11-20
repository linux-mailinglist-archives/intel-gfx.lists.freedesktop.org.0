Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 391D0104286
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 18:50:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82ABD6E51C;
	Wed, 20 Nov 2019 17:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D656E51C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 17:50:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 09:50:54 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200803172"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 09:50:53 -0800
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
References: <20191120173155.20168-1-ramalingam.c@intel.com>
 <20191120173155.20168-3-ramalingam.c@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <395fa41c-89d4-5c7d-8260-6ca2198a5e2a@linux.intel.com>
Date: Wed, 20 Nov 2019 17:50:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120173155.20168-3-ramalingam.c@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Skip the Wa_1604555607
 verification
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

Ck9uIDIwLzExLzIwMTkgMTc6MzEsIFJhbWFsaW5nYW0gQyB3cm90ZToKPiBBdCBUR0wgQTAgc3Rl
cHBpbmcsIEZGX01PREUyIHJlZ2lzdGVyIHJlYWQgYmFjayBpcyBicm9rZW4sIGhlbmNlCj4gZGlz
YWJsaW5nIHRoZSBXQSB2ZXJpZmljYXRpb24uCj4gCj4gSGVscGVyIGZ1bmN0aW9uIGNhbGxlZCB3
YV93cml0ZV9tYXNrZWRfb3Jfbm9fdmVyaWZ5IGlzIGRlZmluZWQgZm9yIHRoZQo+IHNhbWUgcHVy
cG9zZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRl
bC5jb20+Cj4gY2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IHwgMjAgKysrKysrKysrKysrKysrKysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCj4gaW5kZXggOTNlZmVmYTIwNWQ2Li4xNjk4MzMwYzZmMjMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBAQCAtMTYw
LDYgKzE2MCwyMCBAQCB3YV93cml0ZV9tYXNrZWRfb3Ioc3RydWN0IGk5MTVfd2FfbGlzdCAqd2Fs
LCBpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssCj4gICAJX3dhX2FkZCh3YWwsICZ3YSk7Cj4gICB9
Cj4gICAKPiArc3RhdGljIHZvaWQKPiArd2Ffd3JpdGVfbWFza2VkX29yX25vX3ZlcmlmeShzdHJ1
Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIgbWFzaywKPiArCQkgICB1
MzIgdmFsKQo+ICt7Cj4gKwlzdHJ1Y3QgaTkxNV93YSB3YSA9IHsKPiArCQkucmVnICA9IHJlZywK
PiArCQkubWFzayA9IG1hc2ssCj4gKwkJLnZhbCAgPSB2YWwsCj4gKwkJLnJlYWQgPSAwLAo+ICsJ
fTsKPiArCj4gKwlfd2FfYWRkKHdhbCwgJndhKTsKPiArfQo+ICsKPiAgIHN0YXRpYyB2b2lkCj4g
ICB3YV9tYXNrZWRfZW4oc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywg
dTMyIHZhbCkKPiAgIHsKPiBAQCAtNTc4LDcgKzU5MiwxMSBAQCBzdGF0aWMgdm9pZCB0Z2xfY3R4
X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgCXZh
bCA9IGludGVsX3VuY29yZV9yZWFkKGVuZ2luZS0+dW5jb3JlLCBGRl9NT0RFMik7Cj4gICAJdmFs
ICY9IH5GRl9NT0RFMl9URFNfVElNRVJfTUFTSzsKPiAgIAl2YWwgfD0gRkZfTU9ERTJfVERTX1RJ
TUVSXzEyODsKPiAtCXdhX3dyaXRlX21hc2tlZF9vcih3YWwsIEZGX01PREUyLCBGRl9NT0RFMl9U
RFNfVElNRVJfTUFTSywgdmFsKTsKPiArCWlmIChJU19UR0xfUkVWSUQoZW5naW5lLT51bmNvcmUt
Pmk5MTUsIDAsIFRHTF9SRVZJRF9BMCkpCgpUaGVyZSBpcyBlbmdpbmUtPmk5MTUuCgo+ICsJCXdh
X3dyaXRlX21hc2tlZF9vcl9ub192ZXJpZnkod2FsLCBGRl9NT0RFMiwKPiArCQkJCQkgICAgIEZG
X01PREUyX1REU19USU1FUl9NQVNLLCB2YWwpOwo+ICsJZWxzZQo+ICsJCXdhX3dyaXRlX21hc2tl
ZF9vcih3YWwsIEZGX01PREUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsKTsKCllvdSBk
aWQgbm90IHRoaW5rIHN1Z2dlc3RlZCBhbHRlcm5hdGl2ZSB3aGVyZSByZWFkIG1hc2sgaXMgZGly
ZWN0bHkgCnBhc3NlZCBpbiB3b3VsZCB3b3JrIGJldHRlcj8gSXQgd291bGQgcmVhZCBhIGJpdCBt
b3JlIGNvbXBhY3Q6CgogICBfX3dhX3dyaXRlX21hc2tlZF9vciguLi4sIElTX1RHTF9SRVZJRCgu
LikgPyAwIDogdmFsKQoKVXAgdG8geW91IHdoYXQgeW91IHByZWZlciwgSSBndWVzcyB0aGUgZXhw
bGljaXQgX25vX3ZlcmlmeSBicmluZ3Mgc29tZSAKc2VsZi1kb2N1bWVudGluZyBiZW5lZml0cy4K
CkFsc28sIGRvIHlvdSB0aGluayB0aGVyZSBpcyB2YWx1ZSBpbiBoYXZpbmcgdHdvIHBhdGNoZXMg
aW5zdGVhZCBvZiBqdXN0IApzcXVhc2hpbmcgaW50byBvbmU/IEkgd291bGQgYmUgdGVtcHRlZCB0
byBzcXVhc2guCgpSZWdhcmRzLAoKVHZydGtvCgo+ICAgfQo+ICAgCj4gICBzdGF0aWMgdm9pZAo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
