Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F04100459
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 12:38:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D05C6E488;
	Mon, 18 Nov 2019 11:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB3076E488
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 11:38:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 03:38:13 -0800
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="199936436"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 03:38:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191115165132.9472-3-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191115165132.9472-1-matthew.d.roper@intel.com>
 <20191115165132.9472-3-matthew.d.roper@intel.com>
Date: Mon, 18 Nov 2019 13:38:09 +0200
Message-ID: <87lfsdza72.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI v5 2/2] drm/i915/vbt: Handle generic DTD block
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNSBOb3YgMjAxOSwgTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4gd3JvdGU6Cj4gVkJUIHJldmlzaW9uIDIyOSBhZGRzIGEgbmV3ICJHZW5lcmljIERURCIgYmxv
Y2sgNTggYW5kIGRlcHJlY2F0ZXMgdGhlCj4gb2xkIExGUCBwYW5lbCBtb2RlIGRhdGEgaW4gYmxv
Y2sgNDIuICBMZXQncyBzdGFydCBwYXJzaW5nIHRoaXMgYmxvY2sgdG8KPiBmaWxsIGluIHRoZSBw
YW5lbCBmaXhlZCBtb2RlIG9uIGRldmljZXMgd2l0aCBhID49MjI5IFZCVC4KPgo+IHYyOgo+ICAq
IFVwZGF0ZSBhY2NvcmRpbmcgdG8gdGhlIHJlY2VudCB1cGRhdGVzOgo+ICAgICAtIERURCBzaXpl
IGlzIG5vdyAxNiBiaXRzIGluc3RlYWQgb2YgMjQKPiAgICAgLSBwb2xhcml0eSBpcyBub3cganVz
dCBhIHNpbmdsZSBiaXQgZm9yIGhzeW5jIGFuZCB2c3luYyBhbmQgaXMKPiAgICAgICBwcm9wZXJs
eSBkb2N1bWVudGVkCj4gICogTWlub3IgY2hlY2twYXRjaCBmaXgKPgo+IHYzOgo+ICAqIE5vdyB0
aGF0IHBhbmVsIG9wdGlvbnMgYXJlIHBhcnNlZCBzZXBhcmF0ZWx5IGZyb20gdGhlIHByZXZpb3Vz
IHBhdGNoLAo+ICAgIG1vdmUgZ2VuZXJpYyBEVEQgcGFyc2luZyBpbnRvIGEgZnVuY3Rpb24gcGFy
YWxsZWwgdG8KPiAgICBwYXJzZV9sZnBfcGFuZWxfZHRkLiAgV2UnbGwgc3RpbGwgZmFsbCBiYWNr
IHRvIGxvb2tpbmcgYXQgdGhlIGxlZ2FjeQo+ICAgIExWRFMgdGltaW5nIGJsb2NrIGlmIHRoZSBn
ZW5lcmljIERURCBmYWlscy4gIChKYW5pKQo+ICAqIERvbid0IGZvcmdldCB0byBhY3R1YWxseSBz
ZXQgbGZwX2x2ZHNfdmJ0X21vZGUhICAoSmFuaSkKPiAgKiBEcm9wICJiZGJfIiBwcmVmaXggZnJv
bSBkdGQgZW50cnkgc3RydWN0dXJlLiAgKEphbmkpCj4gICogRm9sbG93IEM5OSBzdGFuZGFyZCBm
b3Igc3RydWN0dXJlJ3MgZmxleGlibGUgYXJyYXkgbWVtYmVyLiAgKEphbmkpCj4KPiB2NDoKPiAg
KiBBZGQgInBvc2l0aXZlIiB0byBwb2xhcml0eSBmaWVsZCBuYW1lcyBmb3IgY2xhcml0eS4gIChK
YW5pKQo+ICAqIE1vdmUgVkJUIHZlcnNpb24gY2hlY2sgYW5kIGZhbGxiYWNrIHRvIGxlZ2FjeSBE
VEQgcGFyc2luZyBsb2dpYyB0byBhCj4gICAgaGVscGVyIHRvIGtlZXAgdG9wLWxldmVsIFZCVCBw
YXJzaW5nIHVuY2x1dHRlcmVkLiAgKEphbmkpCj4gICogUmVzdHJ1Y3R1cmUgcmVzZXJ2ZWQgYml0
IHBhY2tpbmcgYXQgZW5kIG9mIGdlbmVyaWNfZHRkX2VudHJ5IGZyb20KPiAgICAidTMyIHJzdmQ6
MjQiIHRvICJ1OCByc3ZkWzNdIiB0byBwcmV2ZW50IGNvcHkvcGFzdGUgbWlzdGFrZXMgaW4gdGhl
Cj4gICAgZnV0dXJlLiAgKEphbmkpCgpUaGFua3MsIGxvb2tzIG5pY2UuCgpCUiwKSmFuaS4KCj4K
PiBCc3BlYzogNTQ3NTEKPiBCc3BlYzogMjAxNDgKPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
YyAgICAgfCA5NiArKysrKysrKysrKysrKysrKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8IDMxICsrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDEy
NSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBpbmRleCBkMTNjZTBiN2RiOGIuLmY2YTlhNWNjYjU1NiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gQEAgLTI5
Niw3ICsyOTYsNyBAQCBwYXJzZV9sZnBfcGFuZWxfZHRkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKPiAgCj4gIAlkZXZfcHJpdi0+dmJ0LmxmcF9sdmRzX3ZidF9tb2RlID0gcGFu
ZWxfZml4ZWRfbW9kZTsKPiAgCj4gLQlEUk1fREVCVUdfS01TKCJGb3VuZCBwYW5lbCBtb2RlIGlu
IEJJT1MgVkJUIHRhYmxlczpcbiIpOwo+ICsJRFJNX0RFQlVHX0tNUygiRm91bmQgcGFuZWwgbW9k
ZSBpbiBCSU9TIFZCVCBsZWdhY3kgbGZwIHRhYmxlOlxuIik7Cj4gIAlkcm1fbW9kZV9kZWJ1Z19w
cmludG1vZGVsaW5lKHBhbmVsX2ZpeGVkX21vZGUpOwo+ICAKPiAgCWZwX3RpbWluZyA9IGdldF9s
dmRzX2ZwX3RpbWluZyhiZGIsIGx2ZHNfbGZwX2RhdGEsCj4gQEAgLTMxMyw2ICszMTMsOTggQEAg
cGFyc2VfbGZwX3BhbmVsX2R0ZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4g
IAl9Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkCj4gK3BhcnNlX2dlbmVyaWNfZHRkKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiArCQkgIGNvbnN0IHN0cnVjdCBiZGJfaGVhZGVy
ICpiZGIpCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBiZGJfZ2VuZXJpY19kdGQgKmdlbmVyaWNfZHRk
Owo+ICsJY29uc3Qgc3RydWN0IGdlbmVyaWNfZHRkX2VudHJ5ICpkdGQ7Cj4gKwlzdHJ1Y3QgZHJt
X2Rpc3BsYXlfbW9kZSAqcGFuZWxfZml4ZWRfbW9kZTsKPiArCWludCBudW1fZHRkOwo+ICsKPiAr
CWdlbmVyaWNfZHRkID0gZmluZF9zZWN0aW9uKGJkYiwgQkRCX0dFTkVSSUNfRFREKTsKPiArCWlm
ICghZ2VuZXJpY19kdGQpCj4gKwkJcmV0dXJuOwo+ICsKPiArCWlmIChnZW5lcmljX2R0ZC0+Z2R0
ZF9zaXplIDwgc2l6ZW9mKHN0cnVjdCBnZW5lcmljX2R0ZF9lbnRyeSkpIHsKPiArCQlEUk1fRVJS
T1IoIkdEVEQgc2l6ZSAldSBpcyB0b28gc21hbGwuXG4iLAo+ICsJCQkgIGdlbmVyaWNfZHRkLT5n
ZHRkX3NpemUpOwo+ICsJCXJldHVybjsKPiArCX0gZWxzZSBpZiAoZ2VuZXJpY19kdGQtPmdkdGRf
c2l6ZSAhPQo+ICsJCSAgIHNpemVvZihzdHJ1Y3QgZ2VuZXJpY19kdGRfZW50cnkpKSB7Cj4gKwkJ
RFJNX0VSUk9SKCJVbmV4cGVjdGVkIEdEVEQgc2l6ZSAldVxuIiwgZ2VuZXJpY19kdGQtPmdkdGRf
c2l6ZSk7Cj4gKwkJLyogRFREIGhhcyB1bmtub3duIGZpZWxkcywgYnV0IGtlZXAgZ29pbmcgKi8K
PiArCX0KPiArCj4gKwludW1fZHRkID0gKGdldF9ibG9ja3NpemUoZ2VuZXJpY19kdGQpIC0KPiAr
CQkgICBzaXplb2Yoc3RydWN0IGJkYl9nZW5lcmljX2R0ZCkpIC8gZ2VuZXJpY19kdGQtPmdkdGRf
c2l6ZTsKPiArCWlmIChkZXZfcHJpdi0+dmJ0LnBhbmVsX3R5cGUgPiBudW1fZHRkKSB7Cj4gKwkJ
RFJNX0VSUk9SKCJQYW5lbCB0eXBlICVkIG5vdCBmb3VuZCBpbiB0YWJsZSBvZiAlZCBEVEQnc1xu
IiwKPiArCQkJICBkZXZfcHJpdi0+dmJ0LnBhbmVsX3R5cGUsIG51bV9kdGQpOwo+ICsJCXJldHVy
bjsKPiArCX0KPiArCj4gKwlkdGQgPSAmZ2VuZXJpY19kdGQtPmR0ZFtkZXZfcHJpdi0+dmJ0LnBh
bmVsX3R5cGVdOwo+ICsKPiArCXBhbmVsX2ZpeGVkX21vZGUgPSBremFsbG9jKHNpemVvZigqcGFu
ZWxfZml4ZWRfbW9kZSksIEdGUF9LRVJORUwpOwo+ICsJaWYgKCFwYW5lbF9maXhlZF9tb2RlKQo+
ICsJCXJldHVybjsKPiArCj4gKwlwYW5lbF9maXhlZF9tb2RlLT5oZGlzcGxheSA9IGR0ZC0+aGFj
dGl2ZTsKPiArCXBhbmVsX2ZpeGVkX21vZGUtPmhzeW5jX3N0YXJ0ID0KPiArCQlwYW5lbF9maXhl
ZF9tb2RlLT5oZGlzcGxheSArIGR0ZC0+aGZyb250X3BvcmNoOwo+ICsJcGFuZWxfZml4ZWRfbW9k
ZS0+aHN5bmNfZW5kID0KPiArCQlwYW5lbF9maXhlZF9tb2RlLT5oc3luY19zdGFydCArIGR0ZC0+
aHN5bmM7Cj4gKwlwYW5lbF9maXhlZF9tb2RlLT5odG90YWwgPSBwYW5lbF9maXhlZF9tb2RlLT5o
c3luY19lbmQ7Cj4gKwo+ICsJcGFuZWxfZml4ZWRfbW9kZS0+dmRpc3BsYXkgPSBkdGQtPnZhY3Rp
dmU7Cj4gKwlwYW5lbF9maXhlZF9tb2RlLT52c3luY19zdGFydCA9Cj4gKwkJcGFuZWxfZml4ZWRf
bW9kZS0+dmRpc3BsYXkgKyBkdGQtPnZmcm9udF9wb3JjaDsKPiArCXBhbmVsX2ZpeGVkX21vZGUt
PnZzeW5jX2VuZCA9Cj4gKwkJcGFuZWxfZml4ZWRfbW9kZS0+dnN5bmNfc3RhcnQgKyBkdGQtPnZz
eW5jOwo+ICsJcGFuZWxfZml4ZWRfbW9kZS0+dnRvdGFsID0gcGFuZWxfZml4ZWRfbW9kZS0+dnN5
bmNfZW5kOwo+ICsKPiArCXBhbmVsX2ZpeGVkX21vZGUtPmNsb2NrID0gZHRkLT5waXhlbF9jbG9j
azsKPiArCXBhbmVsX2ZpeGVkX21vZGUtPndpZHRoX21tID0gZHRkLT53aWR0aF9tbTsKPiArCXBh
bmVsX2ZpeGVkX21vZGUtPmhlaWdodF9tbSA9IGR0ZC0+aGVpZ2h0X21tOwo+ICsKPiArCXBhbmVs
X2ZpeGVkX21vZGUtPnR5cGUgPSBEUk1fTU9ERV9UWVBFX1BSRUZFUlJFRDsKPiArCWRybV9tb2Rl
X3NldF9uYW1lKHBhbmVsX2ZpeGVkX21vZGUpOwo+ICsKPiArCWlmIChkdGQtPmhzeW5jX3Bvc2l0
aXZlX3BvbGFyaXR5KQo+ICsJCXBhbmVsX2ZpeGVkX21vZGUtPmZsYWdzIHw9IERSTV9NT0RFX0ZM
QUdfUEhTWU5DOwo+ICsJZWxzZQo+ICsJCXBhbmVsX2ZpeGVkX21vZGUtPmZsYWdzIHw9IERSTV9N
T0RFX0ZMQUdfTkhTWU5DOwo+ICsKPiArCWlmIChkdGQtPnZzeW5jX3Bvc2l0aXZlX3BvbGFyaXR5
KQo+ICsJCXBhbmVsX2ZpeGVkX21vZGUtPmZsYWdzIHw9IERSTV9NT0RFX0ZMQUdfUFZTWU5DOwo+
ICsJZWxzZQo+ICsJCXBhbmVsX2ZpeGVkX21vZGUtPmZsYWdzIHw9IERSTV9NT0RFX0ZMQUdfTlZT
WU5DOwo+ICsKPiArCURSTV9ERUJVR19LTVMoIkZvdW5kIHBhbmVsIG1vZGUgaW4gQklPUyBWQlQg
Z2VuZXJpYyBkdGQgdGFibGU6XG4iKTsKPiArCWRybV9tb2RlX2RlYnVnX3ByaW50bW9kZWxpbmUo
cGFuZWxfZml4ZWRfbW9kZSk7Cj4gKwo+ICsJZGV2X3ByaXYtPnZidC5sZnBfbHZkc192YnRfbW9k
ZSA9IHBhbmVsX2ZpeGVkX21vZGU7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkCj4gK3BhcnNlX3Bh
bmVsX2R0ZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gKwkJY29uc3Qgc3Ry
dWN0IGJkYl9oZWFkZXIgKmJkYikKPiArewo+ICsJLyoKPiArCSAqIE9sZGVyIFZCVHMgcHJvdmlk
ZWQgcHJvdmlkZWQgRFREIGluZm9ybWF0aW9uIGZvciBpbnRlcm5hbCBkaXNwbGF5cwo+ICsJICog
dGhyb3VnaCB0aGUgIkxGUCBwYW5lbCBEVEQiIGJsb2NrICg0MikuICBBcyBvZiBWQlQgcmV2aXNp
b24gMjI5LAo+ICsJICogdGhhdCBibG9jayBpcyBub3cgZGVwcmVjYXRlZCBhbmQgRFREIGluZm9y
bWF0aW9uIHNob3VsZCBiZSBwcm92aWRlZAo+ICsJICogdmlhIGEgbmV3ZXIgImdlbmVyaWMgRFRE
IiBibG9jayAoNTgpLiAgSnVzdCB0byBiZSBzYWZlLCB3ZSdsbAo+ICsJICogdHJ5IHRoZSBuZXcg
Z2VuZXJpYyBEVEQgYmxvY2sgZmlyc3Qgb24gVkJUID49IDIyOSwgYnV0IHN0aWxsIGZhbGwKPiAr
CSAqIGJhY2sgdG8gdHJ5aW5nIHRoZSBvbGQgTEZQIGJsb2NrIGlmIHRoYXQgZmFpbHMuCj4gKwkg
Ki8KPiArCWlmIChiZGItPnZlcnNpb24gPj0gMjI5KQo+ICsJCXBhcnNlX2dlbmVyaWNfZHRkKGRl
dl9wcml2LCBiZGIpOwo+ICsJaWYgKCFkZXZfcHJpdi0+dmJ0LmxmcF9sdmRzX3ZidF9tb2RlKQo+
ICsJCXBhcnNlX2xmcF9wYW5lbF9kdGQoZGV2X3ByaXYsIGJkYik7Cj4gK30KPiArCj4gIHN0YXRp
YyB2b2lkCj4gIHBhcnNlX2xmcF9iYWNrbGlnaHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAo+ICAJCSAgICBjb25zdCBzdHJ1Y3QgYmRiX2hlYWRlciAqYmRiKQo+IEBAIC0xODc3
LDcgKzE5NjksNyBAQCB2b2lkIGludGVsX2Jpb3NfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCj4gIAlwYXJzZV9nZW5lcmFsX2ZlYXR1cmVzKGRldl9wcml2LCBiZGIpOwo+
ICAJcGFyc2VfZ2VuZXJhbF9kZWZpbml0aW9ucyhkZXZfcHJpdiwgYmRiKTsKPiAgCXBhcnNlX3Bh
bmVsX29wdGlvbnMoZGV2X3ByaXYsIGJkYik7Cj4gLQlwYXJzZV9sZnBfcGFuZWxfZHRkKGRldl9w
cml2LCBiZGIpOwo+ICsJcGFyc2VfcGFuZWxfZHRkKGRldl9wcml2LCBiZGIpOwo+ICAJcGFyc2Vf
bGZwX2JhY2tsaWdodChkZXZfcHJpdiwgYmRiKTsKPiAgCXBhcnNlX3Nkdm9fcGFuZWxfZGF0YShk
ZXZfcHJpdiwgYmRiKTsKPiAgCXBhcnNlX2RyaXZlcl9mZWF0dXJlcyhkZXZfcHJpdiwgYmRiKTsK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVm
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCj4gaW5k
ZXggNjlhN2NiMWZhMTIxLi5mMDMzOGRhM2E4MmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCj4gQEAgLTExNSw2ICsxMTUsNyBAQCBlbnVt
IGJkYl9ibG9ja19pZCB7Cj4gIAlCREJfTUlQSV9DT05GSUcJCQk9IDUyLAo+ICAJQkRCX01JUElf
U0VRVUVOQ0UJCT0gNTMsCj4gIAlCREJfQ09NUFJFU1NJT05fUEFSQU1FVEVSUwk9IDU2LAo+ICsJ
QkRCX0dFTkVSSUNfRFRECQkJPSA1OCwKPiAgCUJEQl9TS0lQCQkJPSAyNTQsIC8qIFZCSU9TIHBy
aXZhdGUgYmxvY2ssIGlnbm9yZSAqLwo+ICB9Owo+ICAKPiBAQCAtODYzLDQgKzg2NCwzNCBAQCBz
dHJ1Y3QgYmRiX2NvbXByZXNzaW9uX3BhcmFtZXRlcnMgewo+ICAJc3RydWN0IGRzY19jb21wcmVz
c2lvbl9wYXJhbWV0ZXJzX2VudHJ5IGRhdGFbMTZdOwo+ICB9IF9fcGFja2VkOwo+ICAKPiArLyoK
PiArICogQmxvY2sgNTggLSBHZW5lcmljIERURCBCbG9jawo+ICsgKi8KPiArCj4gK3N0cnVjdCBn
ZW5lcmljX2R0ZF9lbnRyeSB7Cj4gKwl1MzIgcGl4ZWxfY2xvY2s7Cj4gKwl1MTYgaGFjdGl2ZTsK
PiArCXUxNiBoYmxhbms7Cj4gKwl1MTYgaGZyb250X3BvcmNoOwo+ICsJdTE2IGhzeW5jOwo+ICsJ
dTE2IHZhY3RpdmU7Cj4gKwl1MTYgdmJsYW5rOwo+ICsJdTE2IHZmcm9udF9wb3JjaDsKPiArCXUx
NiB2c3luYzsKPiArCXUxNiB3aWR0aF9tbTsKPiArCXUxNiBoZWlnaHRfbW07Cj4gKwo+ICsJLyog
RmxhZ3MgKi8KPiArCXU4IHJzdmRfZmxhZ3M6NjsKPiArCXU4IHZzeW5jX3Bvc2l0aXZlX3BvbGFy
aXR5OjE7Cj4gKwl1OCBoc3luY19wb3NpdGl2ZV9wb2xhcml0eToxOwo+ICsKPiArCXU4IHJzdmRb
M107Cj4gK30gX19wYWNrZWQ7Cj4gKwo+ICtzdHJ1Y3QgYmRiX2dlbmVyaWNfZHRkIHsKPiArCXUx
NiBnZHRkX3NpemU7Cj4gKwlzdHJ1Y3QgZ2VuZXJpY19kdGRfZW50cnkgZHRkW107CS8qIHVwIHRv
IDI0IERURCdzICovCj4gK30gX19wYWNrZWQ7Cj4gKwo+ICAjZW5kaWYgLyogX0lOVEVMX1ZCVF9E
RUZTX0hfICovCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
