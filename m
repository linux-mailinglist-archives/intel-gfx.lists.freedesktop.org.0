Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B79AA0C0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 13:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AED436E063;
	Thu,  5 Sep 2019 11:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D996E060;
 Thu,  5 Sep 2019 11:01:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 04:01:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="190461070"
Received: from sbuchne1-mobl2.ger.corp.intel.com (HELO [10.249.38.28])
 ([10.249.38.28])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Sep 2019 04:01:30 -0700
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 dri-devel@lists.freedesktop.org
References: <20190905103746.32326-1-stanislav.lisovskiy@intel.com>
 <20190905103746.32326-3-stanislav.lisovskiy@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <cd6e0926-a1f3-423d-9b58-c0de51110a8a@linux.intel.com>
Date: Thu, 5 Sep 2019 13:01:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190905103746.32326-3-stanislav.lisovskiy@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm: Introduce change counter to
 drm_connector
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
Cc: daniel.vetter@ffwll.ch, intel-gfx@lists.freedesktop.org,
 martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDUtMDktMjAxOSBvbSAxMjozNyBzY2hyZWVmIFN0YW5pc2xhdiBMaXNvdnNraXk6Cj4gVGhp
cyBjb3VudGVyIHdpbGwgYmUgdXNlZCBieSBkcm1faGVscGVyX3Byb2JlX2RldGVjdCBjYWxsZXIg
dG8gZGV0ZXJtaW5lCj4gaWYgc29tZXRoaW5nIGVsc2UgaGFkIGNoYW5nZWQgZXhjZXB0IGNvbm5l
Y3Rpb24gc3RhdHVzLAo+IGxpa2UgZm9yIGV4YW1wbGUgZWRpZC4gSGFyZHdhcmUgc3BlY2lmaWMg
ZHJpdmVycyBhcmUgcmVzcG9uc2libGUKPiBmb3IgdXBkYXRpbmcgdGhpcyBjb3VudGVyIHdoZW4g
c29tZSBjaGFuZ2UgaXMgZGV0ZWN0ZWQgdG8gbm90aWZ5Cj4gdGhlIGRybSBwYXJ0LCB3aGljaCBj
YW4gdHJpZ2dlciBmb3IgZXhhbXBsZSBob3RwbHVnIGV2ZW50Lgo+Cj4gQ3VycmVudGx5IHRoZXJl
IGlzIG5vIHdheSB0byBwcm9wYWdhdGUgdGhhdCB0byBhIGNhbGxpbmcgbGF5ZXIsCj4gYXMgd2Ug
c2VuZCBvbmx5IGNvbm5lY3Rpb25fc3RhdHVzIHVwZGF0ZSwgaG93ZXZlciBhcyB3ZSBzZWUgd2l0
aAo+IGVkaWQgdGhlIGNoYW5nZXMgY2FuIGJlIGJyb2FkZXIuCj4KPiB2MjogQWRkZWQgZG9jdW1l
bnRhdGlvbiBmb3IgdGhlIG5ldyBjb3VudGVyLiBSZW5hbWUgY2hhbmdlX2NvdW50ZXIgdG8KPiAg
ICAgZXBvY2hfY291bnRlci4KPgo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU1NDAKPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlz
b3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2RybV9jb25uZWN0b3IuYyAgICB8ICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2RybV9w
cm9iZV9oZWxwZXIuYyB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gIGluY2x1
ZGUvZHJtL2RybV9jb25uZWN0b3IuaCAgICAgICAgfCAgMyArKysKPiAgMyBmaWxlcyBjaGFuZ2Vk
LCAzMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rv
ci5jCj4gaW5kZXggNGM3NjY2MjRiMjBkLi4xOGIxYWQyYTRlZWUgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
Y29ubmVjdG9yLmMKPiBAQCAtMjQ2LDYgKzI0Niw3IEBAIGludCBkcm1fY29ubmVjdG9yX2luaXQo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgCUlOSVRfTElTVF9IRUFEKCZjb25uZWN0b3ItPm1v
ZGVzKTsKPiAgCW11dGV4X2luaXQoJmNvbm5lY3Rvci0+bXV0ZXgpOwo+ICAJY29ubmVjdG9yLT5l
ZGlkX2Jsb2JfcHRyID0gTlVMTDsKPiArCWNvbm5lY3Rvci0+ZXBvY2hfY291bnRlciA9IDA7Cj4g
IAljb25uZWN0b3ItPnRpbGVfYmxvYl9wdHIgPSBOVUxMOwo+ICAJY29ubmVjdG9yLT5zdGF0dXMg
PSBjb25uZWN0b3Jfc3RhdHVzX3Vua25vd247Cj4gIAljb25uZWN0b3ItPmRpc3BsYXlfaW5mby5w
YW5lbF9vcmllbnRhdGlvbiA9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJv
YmVfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3Byb2JlX2hlbHBlci5jCj4gaW5kZXgg
MzUxY2JjNDBmMGY4Li41MTMxYWU1NmU2NzYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2RybV9wcm9iZV9oZWxwZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJvYmVfaGVs
cGVyLmMKPiBAQCAtNzc3LDYgKzc3Nyw3IEBAIGJvb2wgZHJtX2hlbHBlcl9ocGRfaXJxX2V2ZW50
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gIAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9saXN0X2l0
ZXIgY29ubl9pdGVyOwo+ICAJZW51bSBkcm1fY29ubmVjdG9yX3N0YXR1cyBvbGRfc3RhdHVzOwo+
ICAJYm9vbCBjaGFuZ2VkID0gZmFsc2U7Cj4gKwl1aW50NjRfdCBvbGRfZXBvY2hfY291bnRlcjsK
PiAgCj4gIAlpZiAoIWRldi0+bW9kZV9jb25maWcucG9sbF9lbmFibGVkKQo+ICAJCXJldHVybiBm
YWxzZTsKPiBAQCAtNzkwLDIwICs3OTEsNDQgQEAgYm9vbCBkcm1faGVscGVyX2hwZF9pcnFfZXZl
bnQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiAgCj4gIAkJb2xkX3N0YXR1cyA9IGNvbm5lY3Rv
ci0+c3RhdHVzOwo+ICAKPiArCQlvbGRfZXBvY2hfY291bnRlciA9IGNvbm5lY3Rvci0+ZXBvY2hf
Y291bnRlcjsKPiArCj4gKwkJRFJNX0RFQlVHX0tNUygiW0NPTk5FQ1RPUjolZDolc10gT2xkIGNo
YW5nZSBjb3VudGVyICVsbHVcbiIsIGNvbm5lY3Rvci0+YmFzZS5pZCwKPiArCQkJICAgICAgY29u
bmVjdG9yLT5uYW1lLAo+ICsJCQkgICAgICBvbGRfZXBvY2hfY291bnRlcik7Cj4gKwo+ICAJCWNv
bm5lY3Rvci0+c3RhdHVzID0gZHJtX2hlbHBlcl9wcm9iZV9kZXRlY3QoY29ubmVjdG9yLCBOVUxM
LCBmYWxzZSk7ClBhc3MgYSB1MzIgKmNoYW5nZWQgYXMgYXJndW1lbnQgdG8gZHJtX2hlbHBlcl9w
cm9iZV9kZXRlY3Q/IHdvdWxkIHJlcXVpcmUgc2lnbmF0dXJlIGNoYW5nZSwKPiAgCQlEUk1fREVC
VUdfS01TKCJbQ09OTkVDVE9SOiVkOiVzXSBzdGF0dXMgdXBkYXRlZCBmcm9tICVzIHRvICVzXG4i
LAo+ICAJCQkgICAgICBjb25uZWN0b3ItPmJhc2UuaWQsCj4gIAkJCSAgICAgIGNvbm5lY3Rvci0+
bmFtZSwKPiAgCQkJICAgICAgZHJtX2dldF9jb25uZWN0b3Jfc3RhdHVzX25hbWUob2xkX3N0YXR1
cyksCj4gIAkJCSAgICAgIGRybV9nZXRfY29ubmVjdG9yX3N0YXR1c19uYW1lKGNvbm5lY3Rvci0+
c3RhdHVzKSk7Cj4gLQkJaWYgKG9sZF9zdGF0dXMgIT0gY29ubmVjdG9yLT5zdGF0dXMpCj4gKwo+
ICsJCURSTV9ERUJVR19LTVMoIltDT05ORUNUT1I6JWQ6JXNdIE5ldyBjaGFuZ2UgY291bnRlciAl
bGx1XG4iLAo+ICsJCQkgICAgICBjb25uZWN0b3ItPmJhc2UuaWQsCj4gKwkJCSAgICAgIGNvbm5l
Y3Rvci0+bmFtZSwKPiArCQkJICAgICAgY29ubmVjdG9yLT5lcG9jaF9jb3VudGVyKTsKPiArCj4g
KwkJaWYgKG9sZF9zdGF0dXMgIT0gY29ubmVjdG9yLT5zdGF0dXMpIHsKPiAgCQkJY2hhbmdlZCA9
IHRydWU7Cj4gKwkJfQo+ICsKPiArCQkvKiBDaGVjayBjaGFuZ2luZyBvZiBlZGlkIHdoZW4gYSBj
b25uZWN0b3Igc3RhdHVzIHN0aWxsIHJlbWFpbnMKPiArCQkgKiBhcyAiY29ubmVjdG9yX3N0YXR1
c19jb25uZWN0ZWQiLgo+ICsJCSAqLwo+ICsJCWlmIChjb25uZWN0b3ItPnN0YXR1cyA9PSBjb25u
ZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCAmJgo+ICsJCSAgICBvbGRfc3RhdHVzID09IGNvbm5lY3Rv
cl9zdGF0dXNfY29ubmVjdGVkICYmCj4gKwkJICAgIG9sZF9lcG9jaF9jb3VudGVyICE9IGNvbm5l
Y3Rvci0+ZXBvY2hfY291bnRlcikgewo+ICsJCQljaGFuZ2VkID0gdHJ1ZTsKPiArCQl9CkNvdWxk
IHdlIGJ1bXAgdGhlIGVwb2NoIGNvdW50ZXIgZm9yIGFueSBldmVudCBiZWluZyBzZW50IG91dD8g
V291bGQgbWFrZSBtb3JlIHNlbnNlLgo+ICAJfQo+ICAJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJf
ZW5kKCZjb25uX2l0ZXIpOwo+ICAJbXV0ZXhfdW5sb2NrKCZkZXYtPm1vZGVfY29uZmlnLm11dGV4
KTsKPiAgCj4gLQlpZiAoY2hhbmdlZCkKPiArCWlmIChjaGFuZ2VkKSB7Cj4gIAkJZHJtX2ttc19o
ZWxwZXJfaG90cGx1Z19ldmVudChkZXYpOwo+ICsJCURSTV9ERUJVR19LTVMoIlNlbnQgaG90cGx1
ZyBldmVudFxuIik7Cj4gKwl9Cj4gIAo+ICAJcmV0dXJuIGNoYW5nZWQ7Cj4gIH0KPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oIGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5l
Y3Rvci5oCj4gaW5kZXggNjgxY2I1OTBmOTUyLi5hM2NjN2QwOTI3ZDYgMTAwNjQ0Cj4gLS0tIGEv
aW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCj4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5l
Y3Rvci5oCj4gQEAgLTEyODgsNiArMTI4OCw5IEBAIHN0cnVjdCBkcm1fY29ubmVjdG9yIHsKPiAg
CS8qKiBAb3ZlcnJpZGVfZWRpZDogaGFzIHRoZSBFRElEIGJlZW4gb3ZlcndyaXR0ZW4gdGhyb3Vn
aCBkZWJ1Z2ZzIGZvciB0ZXN0aW5nPyAqLwo+ICAJYm9vbCBvdmVycmlkZV9lZGlkOwo+ICAKPiAr
CS8qKiBAZXBvY2hfY291bnRlcjogdXNlZCB0byBkZXRlY3QgYW55IG90aGVyIGNoYW5nZXMgaW4g
Y29ubmVjdG9yLCBiZXNpZGVzIHN0YXR1cyAqLwo+ICsJdWludDY0X3QgZXBvY2hfY291bnRlcjsK
PiArCj4gICNkZWZpbmUgRFJNX0NPTk5FQ1RPUl9NQVhfRU5DT0RFUiAzCj4gIAkvKioKPiAgCSAq
IEBlbmNvZGVyX2lkczogVmFsaWQgZW5jb2RlcnMgZm9yIHRoaXMgY29ubmVjdG9yLiBQbGVhc2Ug
b25seSB1c2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
