Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EFAAD047
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Sep 2019 19:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01DDD89907;
	Sun,  8 Sep 2019 17:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E8489907
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 Sep 2019 17:56:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Sep 2019 10:56:00 -0700
X-IronPort-AV: E=Sophos;i="5.64,481,1559545200"; d="scan'208";a="195973851"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Sep 2019 10:55:58 -0700
Date: Sun, 8 Sep 2019 20:55:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190908175517.GD28096@ideak-desk.fi.intel.com>
References: <20190907171443.16181-1-anshuman.gupta@intel.com>
 <20190907171443.16181-7-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907171443.16181-7-anshuman.gupta@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v7 6/7] drm/i915/tgl: switch between dc3co
 and dc5 based on display idleness
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
Reply-To: imre.deak@intel.com
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBTZXAgMDcsIDIwMTkgYXQgMTA6NDQ6NDJQTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj4gREMzQ08gaXMgdXNlZnVsIHBvd2VyIHN0YXRlLCB3aGVuIERNQyBkZXRlY3RzIFBT
UjIgaWRsZSBmcmFtZQo+IHdoaWxlIGFuIGFjdGl2ZSB2aWRlbyBwbGF5YmFjaywgcGxheWluZyAz
MGZwcyB2aWRlbyBvbiA2MGh6IHBhbmVsCj4gaXMgdGhlIGNsYXNzaWMgZXhhbXBsZSBvZiB0aGlz
IHVzZSBjYXNlLgo+IERDNSBhbmQgREM2IHNhdmVzIG1vcmUgcG93ZXIsIGJ1dCBjYW4ndCBiZSBl
bnRlcmVkIGR1cmluZyB2aWRlbwo+IHBsYXliYWNrIGJlY2F1c2UgdGhlcmUgYXJlIG5vdCBlbm91
Z2ggaWRsZSBmcmFtZXMgaW4gYSByb3cgdG8gbWVldAo+IG1vc3QgUFNSMiBwYW5lbCBkZWVwIHNs
ZWVwIGVudHJ5IHJlcXVpcmVtZW50IHR5cGljYWxseSA0IGZyYW1lcy4KClBsZWFzZSBhbHNvIGV4
cGxhaW4gd2h5IERDM2NvIHdpbGwgYmUgZW5hYmxlZCBvbmx5IGZvciBmbGlwcyBidXQgbm90IGZv
cgpvdGhlciBmcm9udGJ1ZmZlciBmbHVzaCBldmVudHMgKE9SSUdJTl9DUy9ESVJUWUZCIGV0Yy4p
IGFuZCB0aGF0IHdlCmNvdWxkIGVuYWJsZSBpdCBmb3IgdGhvc2UgdG9vIGJ5IHN3aXRjaGluZyB0
byBtYW51YWwgUFNSIHRyYWNraW5nIGFuZApwcm9ncmFtbWluZyBvbmx5IDEgaWRsZSBmcmFtZSBm
b3IgZGVlcCBzbGVlcCAoc2VlIGJlbG93KS4KCkFsc28gZXhwbGFpbmluZyB0aGF0IHRoZSBmcm9u
dGJ1ZmZlciBpbnZhbGlkYXRlIGV2ZW50IGRvZXNuJ3QgbmVlZCB0byBiZQphY3RlZCBvbiAoYi9j
IG9mIFBTUiBleGl0KSB3b3VsZCBiZSBoZWxwZnVsLgoKPiAKPiBJdCB3aWxsIGJlIHdvcnRoeSB0
byBlbmFibGUgREMzQ08gYWZ0ZXIgY29tcGxldGlvbiBvZiBlYWNoIGZsaXAKPiBhbmQgc3dpdGNo
IGJhY2sgdG8gREM1IHdoZW4gZGlzcGxheSBpcyBpZGxlLCBhcyBkcml2ZXIgZG9lc24ndAo+IGRp
ZmZlcmVudGlhdGUgYmV0d2VlbiB2aWRlbyBwbGF5YmFjayBhbmQgYSBub3JtYWwgZmxpcC4KPiBJ
dCBpcyBzYWZlciB0byBhbGxvdyBEQzUgYWZ0ZXIgNiBpZGxlIGZyYW1lLCBhcyBQU1IyIHJlcXVp
cmVzCj4gbWluaW11bSA2IGlkbGUgZnJhbWUuCgpJdCB3b3VsZCBiZSBjbGVhcmVyIHRvIHNheSBo
ZXJlIHRoYXQgYWZ0ZXIgYSBmbGlwIHdlIGVuYWJsZSBEQzNjbywgYWZ0ZXIKd2hpY2ggd2Ugd2Fp
dCBtYW51YWxseSA2IGZyYW1lcyAoYnkgc2NoZWR1bGluZyB0aGUgaWRsZSBmcmFtZSB3b3JrKSBh
dAp3aGljaCBwb2ludCB3ZSBlbmFibGUgUFNSIGRlZXAgc2xlZXAgd2l0aCA2IGlkbGUgZnJhbWVz
LiBBZnRlciB0aGlzIDYKaWRsZSBmcmFtZXMgdGhlIEhXIHdpbGwgZW50ZXIgZGVlcCBzbGVlcCBh
bmQgREM1IHdpbGwgYmUgZW50ZXJlZAphZnRlciB0aGlzIGJ5IERNQyBhdCBzb21lIHBvaW50LgoK
VGhlIGNsYWltIHRoYXQgd2UgX2hhdmVfIHRvIG1ha2UgdGhlIEhXIHdhaXQgZm9yIDYgaWRsZSBm
cmFtZXMgYmVmb3JlIGl0CmVudGVycyBkZWVwIHNsZWVwIGRvZXNuJ3QgbWFrZSBtdWNoIHNlbnNl
IHRvIG1lLCB3b3VsZCBiZSBnb29kIHRvIHNlZSBhCnJlZmVyZW5jZSB0byB0aGF0IGlmIGl0IHJl
YWxseSBleGlzdHMuIFRoYXQgc2V0dGluZyBzZWVtcyB0byBvbmx5IHNlcnZlCnRoZSBwdXJwb3Nl
IHRvIGF2b2lkIHVwZGF0ZSBsYWdzLCBidXQgaW4gdGhlIGZ1dHVyZSAoYXMgZGlzY3Vzc2VkIHdp
dGgKVmlsbGUpIHdlIHNob3VsZCBzd2l0Y2ggdG8gbWFudWFsIFBTUiB0cmFja2luZyBhbmQgZm9y
IHRoYXQgd2Ugd291bGQKcHJvZ3JhbSB0aGUgSFcgdG8gd2FpdCBvbmx5IDEgaWRsZSBmcmFtZSBi
ZWZvcmUgZW50ZXJpbmcgZGVlcCBzbGVlcCBhbmQKcmVseSBvbmx5IG9uIHRoZSBtYW51YWwgNiBp
ZGxlIGZyYW1lIHdhaXQgKHZpYSB0aGUgaWRsZSBmcmFtZSB3b3JrKSB0bwphdm9pZCB1cGRhdGUg
bGFncy4KCj4gCj4gdjI6IGNhbGN1bGF0ZWQgcy93IHN0YXRlIHRvIHN3aXRjaCBvdmVyIGRjM2Nv
IHdoZW4gdGhlcmUgaXMgYW4KPiAgICAgdXBkYXRlLiBbSW1yZV0KPiAgICAgdXNlZCBjYW5jZWxf
ZGVsYXllZF93b3JrX3N5bmMoKSBpbiBvcmRlciB0byBhdm9pZCBhbnkgcmFjZQo+ICAgICB3aXRo
IGFscmVhZHkgc2NoZWR1bGVkIGRlbGF5ZWQgd29yay4gW0ltcmVdCj4gdjM6IGNhbmNlbF9kZWxh
eWVkX3dvcmtfc3luYygpIG1heSBibG9ja2VkIHRoZSBjb21taXQgd29yay4KPiAgICAgSGVuY2Ug
ZHJvcHBpbmcgaXQsIGRjNV9pZGxlX3RocmVhZCgpIGNoZWNrcyB0aGUgdmFsaWQgd2FrZXJlZiBi
ZWZvcmUKPiAgICAgcHV0dGluZyB0aGUgcmVmZXJlbmNlIGNvdW50LCB3aGljaCBhdm9pZHMgYW55
IGNoYW5jZXMgb2YgZHJvcHBpbmcKPiAgICAgYSB6ZXJvIHdha2VyZWYuIFtJbXJlIChJUkMpXQo+
IHY0OiB1c2UgZnJvbnRidWZmZXIgZmx1c2ggbWVjaGFuaXNtLiBbSW1yZV0KPiAKPiBDYzogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgo+IENjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyAgfCAgMiArCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAg
ICB8IDc5ICsrKysrKysrKysrKysrKysrKysKPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5oICAgIHwgIDYgKysKPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Zyb250YnVmZmVyLmMgIHwgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oICAgICAgICAgICAgICAgfCAgMSArCj4gIDUgZmlsZXMgY2hhbmdlZCwgODkgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gaW5kZXggODQ0ODhmODdkMDU4Li4yNzU0ZThlZTY5M2YgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xNjIwNiw2ICsxNjIwNiw3
IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiAgCWlu
aXRfbGxpc3RfaGVhZCgmZGV2X3ByaXYtPmF0b21pY19oZWxwZXIuZnJlZV9saXN0KTsKPiAgCUlO
SVRfV09SSygmZGV2X3ByaXYtPmF0b21pY19oZWxwZXIuZnJlZV93b3JrLAo+ICAJCSAgaW50ZWxf
YXRvbWljX2hlbHBlcl9mcmVlX3N0YXRlX3dvcmtlcik7Cj4gKwlJTklUX0RFTEFZRURfV09SSygm
ZGV2X3ByaXYtPmNzci5pZGxlX3dvcmssIHRnbF9kYzVfaWRsZV90aHJlYWQpOwo+ICAKPiAgCWlu
dGVsX2luaXRfcXVpcmtzKGRldl9wcml2KTsKPiAgCj4gQEAgLTE3MTQ3LDYgKzE3MTQ4LDcgQEAg
dm9pZCBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9kZXZpY2UgKmRldikK
PiAgCWZsdXNoX3dvcmtxdWV1ZShkZXZfcHJpdi0+bW9kZXNldF93cSk7Cj4gIAo+ICAJZmx1c2hf
d29yaygmZGV2X3ByaXYtPmF0b21pY19oZWxwZXIuZnJlZV93b3JrKTsKPiArCWZsdXNoX2RlbGF5
ZWRfd29yaygmZGV2X3ByaXYtPmNzci5pZGxlX3dvcmspOwoKVGhpcyBpcyByYWN5IGFzIHRoZSB3
b3JrIGNvdWxkIGJlIHN0aWxsIHJ1bm5pbmcsIGJ1dCBhbHNvIHdvdWxkIGxlYXZlIGEKZmV3IG90
aGVyIHBsYWNlcyB3aXRoIHRoZSB3b3JrIHJ1bm5pbmcgbGlrZSBzdXNwZW5kLCBzbyBsZXQncyBq
dXN0IG1ha2UKc3VyZSB0aGF0IGl0J3Mgbm90IHJ1bm5pbmcgYW55IG1vcmUgYWZ0ZXIgZW5jb2Rl
ciBkaXNhYmxpbmcuCgo+ICAJV0FSTl9PTighbGxpc3RfZW1wdHkoJmRldl9wcml2LT5hdG9taWNf
aGVscGVyLmZyZWVfbGlzdCkpOwo+ICAKPiAgCS8qCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiBpbmRleCBlY2NlMTE4YjViMGUu
LmMxMTBmMDRjOTczMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gQEAgLTIwLDYgKzIwLDcgQEAKPiAgI2luY2x1ZGUg
ImludGVsX3NpZGViYW5kLmgiCj4gICNpbmNsdWRlICJpbnRlbF90Yy5oIgo+ICAjaW5jbHVkZSAi
aW50ZWxfcG0uaCIKPiArI2luY2x1ZGUgImludGVsX3Bzci5oIgo+ICAKPiAgYm9vbCBpbnRlbF9k
aXNwbGF5X3Bvd2VyX3dlbGxfaXNfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCj4gIAkJCQkJIGVudW0gaTkxNV9wb3dlcl93ZWxsX2lkIHBvd2VyX3dlbGxfaWQpOwo+
IEBAIC03NzMsNiArNzc0LDI3IEBAIHN0YXRpYyB2b2lkIGdlbjlfc2V0X2RjX3N0YXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHN0YXRlKQo+ICAJZGV2X3ByaXYtPmNz
ci5kY19zdGF0ZSA9IHZhbCAmIG1hc2s7Cj4gIH0KPiAgCj4gK3N0YXRpYyB1MzIgaW50ZWxfZ2V0
X2ZyYW1lX3RpbWVfdXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNzdGF0ZSkKPiAr
ewo+ICsJdTMyIHBpeGVsX3JhdGUsIGNydGNfaHRvdGFsLCBjcnRjX3Z0b3RhbDsKPiArCXUzMiBm
cmFtZXRpbWVfdXM7Cj4gKwo+ICsJaWYgKCFjc3RhdGUgfHwgIWNzdGF0ZS0+YmFzZS5hY3RpdmUp
Cj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJcGl4ZWxfcmF0ZSA9IGNzdGF0ZS0+cGl4ZWxfcmF0ZTsK
PiArCj4gKwlpZiAoV0FSTl9PTihwaXhlbF9yYXRlID09IDApKQo+ICsJCXJldHVybiAwOwo+ICsK
PiArCWNydGNfaHRvdGFsID0gY3N0YXRlLT5iYXNlLmFkanVzdGVkX21vZGUuY3J0Y19odG90YWw7
Cj4gKwljcnRjX3Z0b3RhbCA9IGNzdGF0ZS0+YmFzZS5hZGp1c3RlZF9tb2RlLmNydGNfdnRvdGFs
Owo+ICsJZnJhbWV0aW1lX3VzID0gRElWX1JPVU5EX1VQKGNydGNfaHRvdGFsICogY3J0Y192dG90
YWwgKiAxMDAwVUxMLAo+ICsJCQkJICAgIHBpeGVsX3JhdGUpOwo+ICsKPiArCXJldHVybiBmcmFt
ZXRpbWVfdXM7Cj4gK30KPiArCj4gIHZvaWQgdGdsX2Rpc2FibGVfcHNyMl90cmFuc2NvZGVyX2V4
aXRsaW5lKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjc3RhdGUpCj4gIHsKPiAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3N0YXRlLT5iYXNlLmNy
dGMtPmRldik7Cj4gQEAgLTgxNyw2ICs4MzksNDkgQEAgdm9pZCB0Z2xfZW5hYmxlX3BzcjJfdHJh
bnNjb2Rlcl9leGl0bGluZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3N0YXRlKQo+
ICAJSTkxNV9XUklURShFWElUTElORShjc3RhdGUtPmNwdV90cmFuc2NvZGVyKSwgdmFsKTsKPiAg
fQo+ICAKPiArdm9pZCB0Z2xfZGMzY29fZmx1c2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAo+ICsJCSAgICAgdW5zaWduZWQgaW50IGZyb250YnVmZmVyX2JpdHMsIGVudW0gZmJf
b3Bfb3JpZ2luIG9yaWdpbikKPiArewo+ICsJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNzdGF0
ZTsKPiArCXUzMiBkZWxheTsKPiArCXVuc2lnbmVkIGludCBidXN5X2Zyb250YnVmZmVyX2JpdHM7
Cj4gKwo+ICsJaWYgKCFJU19USUdFUkxBS0UoZGV2X3ByaXYpKQo+ICsJCXJldHVybjsKPiArCj4g
KwlpZiAob3JpZ2luICE9IE9SSUdJTl9GTElQKQo+ICsJCXJldHVybjsKPiArCj4gKwlpZiAoIWRl
dl9wcml2LT5jc3IuZGMzY29fY3J0YykKPiArCQlyZXR1cm47Cj4gKwo+ICsJY3N0YXRlID0gdG9f
aW50ZWxfY3J0Y19zdGF0ZShkZXZfcHJpdi0+Y3NyLmRjM2NvX2NydGMtPmJhc2Uuc3RhdGUpOwo+
ICsJZnJvbnRidWZmZXJfYml0cyAmPQo+ICsJCUlOVEVMX0ZST05UQlVGRkVSX0FMTF9NQVNLKGRl
dl9wcml2LT5jc3IuZGMzY29fY3J0Yy0+cGlwZSk7Cj4gKwlidXN5X2Zyb250YnVmZmVyX2JpdHMg
Jj0gfmZyb250YnVmZmVyX2JpdHM7CgpIcm0sIHRoaXMgbG9va3Mgd3JvbmcuIEFsc28gaXQgZGVw
ZW5kcyBvbiB0aGUgUFNSIG1lY2hhbmlzbSwgc28gdGhpcwp3aG9sZSBEQzNjbyBmbHVzaCBsb2dp
YyBzaG91bGQgcmF0aGVyIGJlIGRvbmUgZnJvbSB0aGUgUFNSIGZsdXNoIGZ1bmMsCnVzaW5nIHBz
ci5waXBlLgoKPiArCj4gKwltdXRleF9sb2NrKCZkZXZfcHJpdi0+cHNyLmxvY2spOwo+ICsKPiAr
CWlmICghZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJsZWQgfHwgIWRldl9wcml2LT5wc3IuYWN0aXZl
KQo+ICsJCWdvdG8gdW5sb2NrOwo+ICsKPiArCS8qCj4gKwkgKiBBdCBldmVyeSBmbGlwIGZyb250
YnVmZmVyIGZsdXNoIGZpcnN0IGNhbmNlbCB0aGUgZGVsYXllZCB3b3JrLAo+ICsJICogd2hlbiBk
ZWxheWVkIHNjaGVkdWxlcyB0aGF0IG1lYW5zIGRpc3BsYXkgaGFzIGJlZW4gaWRsZQo+ICsJICog
Zm9yIHRoZSA2IGlkbGUgZnJhbWUuCj4gKwkgKi8KPiArCWlmICghYnVzeV9mcm9udGJ1ZmZlcl9i
aXRzKSB7Cj4gKwkJY2FuY2VsX2RlbGF5ZWRfd29yaygmZGV2X3ByaXYtPmNzci5pZGxlX3dvcmsp
OwoKVGhlIGFib3ZlIGlzIHJhY3kuCgo+ICsJCXRnbF9zZXRfdGFyZ2V0X2RjX3N0YXRlKGRldl9w
cml2LCBEQ19TVEFURV9FTl9EQzNDTywgZmFsc2UpOwo+ICsJCWRlbGF5ID0gREM1X1JFUV9JRExF
X0ZSQU1FUyAqIGludGVsX2dldF9mcmFtZV90aW1lX3VzKGNzdGF0ZSk7Cj4gKwkJc2NoZWR1bGVf
ZGVsYXllZF93b3JrKCZkZXZfcHJpdi0+Y3NyLmlkbGVfd29yaywKPiArCQkJCSAgICAgIHVzZWNz
X3RvX2ppZmZpZXMoZGVsYXkpKTsKPiArCX0KPiArCj4gK3VubG9jazoKPiArCW11dGV4X3VubG9j
aygmZGV2X3ByaXYtPnBzci5sb2NrKTsKPiArfQo+ICsKPiAgc3RhdGljIGJvb2wgdGdsX2RjM2Nv
X2lzX2VkcF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2NydGNfc3RhdGUgICpjcnRjX3N0YXRlKQo+
ICB7Cj4gIAlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBjcnRjX3N0YXRlLT5iYXNl
LnN0YXRlOwo+IEBAIC04ODAsNiArOTQ1LDE0IEBAIHZvaWQgdGdsX2RjM2NvX2NydGNfZ2V0X2Nv
bmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgCX0KPiAgfQo+ICAK
PiArdm9pZCB0Z2xfZGM1X2lkbGVfdGhyZWFkKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAr
ewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0KPiArCQljb250YWluZXJf
b2Yod29yaywgdHlwZW9mKCpkZXZfcHJpdiksIGNzci5pZGxlX3dvcmsud29yayk7Cj4gKwo+ICsJ
dGdsX3NldF90YXJnZXRfZGNfc3RhdGUoZGV2X3ByaXYsIERDX1NUQVRFX0VOX1VQVE9fREM2LCB0
cnVlKTsKClNvIGl0IHdvdWxkIHJlc3VsdCBpbiBlbmFibGluZyBkZWVwIHNsZWVwLCBidXQgd2l0
aG91dCB0aGUgUFNSIGxvY2suClRoYXQncyBvbmUgcmVhc29uIHdlIHNob3VsZCByZWFsbHkga2Vl
cCB0aGUgUFNSIHNwZWNpZmljIHBhcnRzIGhlcmUuCgo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCB0
Z2xfYWxsb3dfZGMzY28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4g
IAlpZiAoIWRldl9wcml2LT5wc3Iuc2lua19wc3IyX3N1cHBvcnQpCj4gQEAgLTExNTUsNiArMTIy
OCw5IEBAIHZvaWQgdGdsX3NldF90YXJnZXRfZGNfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LCB1MzIgc3RhdGUsCj4gIAlpZiAoc3RhdGUgPT0gZGV2X3ByaXYtPmNzci5t
YXhfZGNfc3RhdGUpCj4gIAkJZ290byB1bmxvY2s7Cj4gIAo+ICsJaWYgKCFwc3IyX2RlZXBfc2xl
ZXApCj4gKwkJdGdsX3BzcjJfZGVlcF9zbGVlcF9kaXNhYmxlKGRldl9wcml2KTsKPiArCj4gIAlp
ZiAoIWRjX29mZl9lbmFibGVkKSB7Cj4gIAkJLyoKPiAgCQkgKiBOZWVkIHRvIGRpc2FibGUgdGhl
IERDIG9mZiBwb3dlciB3ZWxsIHRvCj4gQEAgLTExNjcsNiArMTI0Myw5IEBAIHZvaWQgdGdsX3Nl
dF90YXJnZXRfZGNfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIg
c3RhdGUsCj4gIAl9Cj4gIAkJZGV2X3ByaXYtPmNzci5tYXhfZGNfc3RhdGUgPSBzdGF0ZTsKPiAg
Cj4gKwlpZiAocHNyMl9kZWVwX3NsZWVwKQo+ICsJCXRnbF9wc3IyX2RlZXBfc2xlZXBfZW5hYmxl
KGRldl9wcml2KTsKPiArCj4gIHVubG9jazoKPiAgCW11dGV4X3VubG9jaygmcG93ZXJfZG9tYWlu
cy0+bG9jayk7Cj4gIH0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuaAo+IGluZGV4IGQ3N2E1YTUzZjU0My4uZGYwOTZkNjRjNzQ0IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmgKPiBAQCAtOSw2ICs5LDkgQEAKPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIK
PiAgI2luY2x1ZGUgImludGVsX3J1bnRpbWVfcG0uaCIKPiAgI2luY2x1ZGUgImk5MTVfcmVnLmgi
Cj4gKyNpbmNsdWRlICJpbnRlbF9mcm9udGJ1ZmZlci5oIgo+ICsKPiArI2RlZmluZSBEQzVfUkVR
X0lETEVfRlJBTUVTCTYKCk5vIG5lZWQgZm9yIGEgZGVmaW5lIGZvciB0aGlzLgoKPiAgCj4gIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlOwo+ICBzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsKPiBAQCAtMjY2
LDYgKzI2OSw5IEBAIHZvaWQgdGdsX2RjM2NvX2NydGNfY29tcHV0ZV9jb25maWcoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICB2b2lkIHRnbF9kYzNjb19jcnRjX2dldF9jb25m
aWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+ICB2b2lkIHRnbF9kaXNh
YmxlX3BzcjJfdHJhbnNjb2Rlcl9leGl0bGluZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqc3RhdGUpOwo+ICB2b2lkIHRnbF9lbmFibGVfcHNyMl90cmFuc2NvZGVyX2V4aXRsaW5lKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpzdGF0ZSk7Cj4gK3ZvaWQgdGdsX2RjM2NvX2Zs
dXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiArCQkgICAgIHVuc2lnbmVk
IGludCBmcm9udGJ1ZmZlcl9iaXRzLCBlbnVtIGZiX29wX29yaWdpbiBvcmlnaW4pOwo+ICt2b2lk
IHRnbF9kYzVfaWRsZV90aHJlYWQoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKTsKPiAgCj4gIGNv
bnN0IGNoYXIgKgo+ICBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zdHIoZW51bSBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW4pOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMKPiBpbmRleCBmYzQwZGMxZmRiY2MuLmMzYjEw
ZjZlNDM4MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Zyb250YnVmZmVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Zyb250YnVmZmVyLmMKPiBAQCAtOTAsNiArOTAsNyBAQCBzdGF0aWMgdm9pZCBmcm9udGJ1ZmZl
cl9mbHVzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgCW1pZ2h0X3NsZWVwKCk7
Cj4gIAlpbnRlbF9lZHBfZHJyc19mbHVzaChpOTE1LCBmcm9udGJ1ZmZlcl9iaXRzKTsKPiAgCWlu
dGVsX3Bzcl9mbHVzaChpOTE1LCBmcm9udGJ1ZmZlcl9iaXRzLCBvcmlnaW4pOwo+ICsJdGdsX2Rj
M2NvX2ZsdXNoKGk5MTUsIGZyb250YnVmZmVyX2JpdHMsIG9yaWdpbik7Cj4gIAlpbnRlbF9mYmNf
Zmx1c2goaTkxNSwgZnJvbnRidWZmZXJfYml0cywgb3JpZ2luKTsKPiAgfQo+ICAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKPiBpbmRleCAzMjE4YjAzMTk4NTIuLmZlNzExMTlhNDU4ZSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IEBAIC0zMzgsNiArMzM4LDcgQEAgc3RydWN0IGludGVs
X2NzciB7Cj4gIAl1MzIgZGNfc3RhdGU7Cj4gIAl1MzIgbWF4X2RjX3N0YXRlOwo+ICAJdTMyIGFs
bG93ZWRfZGNfbWFzazsKPiArCXN0cnVjdCBkZWxheWVkX3dvcmsgaWRsZV93b3JrOwo+ICAJaW50
ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gIAkvKiBjYWNoZSB0aGUgY3J0YyBvbiB3aGljaCBEQzND
TyB3aWxsIGJlIGFsbG93ZWQgKi8KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpkYzNjb19jcnRjOwo+
IC0tIAo+IDIuMjEuMAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
