Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB643A0126
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 21:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF8A6EAAB;
	Tue,  8 Jun 2021 19:01:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 370266EABF;
 Tue,  8 Jun 2021 19:01:12 +0000 (UTC)
IronPort-SDR: MU7rknGy4AaxDHDzTKxoNDbUyrmsvw8s+9nUajZbzjYGPVpQ+4WwMyxwAZB+fUTfyfSVOMAKz+
 qZIzwDkM4uVw==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="184602392"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="184602392"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 12:01:05 -0700
IronPort-SDR: 7FlSl1gt3av8cE+PgD5/CzkP+wPhY8wY7xkiZ6AMokpAPM1ZtoC55PJkzMVW7kPlOBPwykZfbK
 PG4ZL6Bkbgkg==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="440586084"
Received: from arajji-mobl.ger.corp.intel.com (HELO [10.249.254.90])
 ([10.249.254.90])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 12:01:01 -0700
Message-ID: <5f4fbc762eb8560b468c6d4bcce70348eca57ca7.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 08 Jun 2021 21:00:58 +0200
In-Reply-To: <CAM0jSHOyOtORECkqjYuiCncj=rFrgUeoXP4DNvxBxkF2nBmFpg@mail.gmail.com>
References: <20210608092846.64198-1-thomas.hellstrom@linux.intel.com>
 <20210608092846.64198-4-thomas.hellstrom@linux.intel.com>
 <CAM0jSHOyOtORECkqjYuiCncj=rFrgUeoXP4DNvxBxkF2nBmFpg@mail.gmail.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Introduce a ww transaction
 helper
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTA2LTA4IGF0IDE4OjE3ICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
T24gVHVlLCA4IEp1biAyMDIxIGF0IDEwOjI5LCBUaG9tYXMgSGVsbHN0csO2bQo+IDx0aG9tYXMu
aGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPiAKPiA+IEludHJvZHVjZSBhIGZv
cl9pOTE1X2dlbV93dygpe30gdXRpbGl0eSB0byBoZWxwIG1ha2UgdGhlIGNvZGUKPiA+IGFyb3Vu
ZCBhIHd3IHRyYW5zYWN0aW9uIG1vcmUgcmVhZGFibGUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiA+
IC0tLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV93dy5oIHwgMzEKPiA+ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMzAgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaAo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV93dy5oCj4gPiBpbmRleCBmMmQ4NzY5ZTQxMTguLmY2YjFhNzk2NjY3YiAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmgKPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmgKPiA+IEBAIC0xMSwxMSArMTEsNDAgQEAgc3Ry
dWN0IGk5MTVfZ2VtX3d3X2N0eCB7Cj4gPiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qgd3dfYWNxdWly
ZV9jdHggY3R4Owo+ID4gwqDCoMKgwqDCoMKgwqAgc3RydWN0IGxpc3RfaGVhZCBvYmpfbGlzdDsK
PiA+IMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpjb250ZW5kZWQ7
Cj4gPiAtwqDCoMKgwqDCoMKgIGJvb2wgaW50cjsKPiA+ICvCoMKgwqDCoMKgwqAgdW5zaWduZWQg
c2hvcnQgaW50cjsKPiA+ICvCoMKgwqDCoMKgwqAgdW5zaWduZWQgc2hvcnQgbG9vcDsKPiAKPiBX
aHkgYXJlIHRoZXNlIG5vdyB1bnNpZ25lZCBzaG9ydD8KPiAKVGhhdCdzIGJlY2F1c2UgSSBvbmNl
IGdvdCBhIGhhcnNoIGNvbW1lbnQgbWFraW5nIHNvbWUgY2hhbmdlcyB0byB0aGUKY29yZSBtdXRl
eCBjb2RlIHdoZXJlIEkgaGFwcGVuZWQgdG8gc3R1ZmYgYm9vbHMgaW4gdGhlIHN0cnVjdCB3d19t
dXRleCwKYW5kIHdhcyB0b2xkIHRoYXQgaXQgd2FzIGJhZCBzdHlsZSBwdXR0aW5nIGJvb2xzIGlu
IGNvbXBvdW5kIGRhdGEgdHlwZXMKaW4gdGhlIGxpbnV4IGtlcm5lbC4KClRoZXJlJ3Mgbm8gY2hl
Y2twYXRjaC5wbCBjaGVja3MgZm9yIHRoYXQgdGhvdWdoLi4uCgo+IFJldmlld2VkLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gCj4gPiDCoH07Cj4gPiAKPiA+IMKg
dm9pZCBpOTE1X2dlbV93d19jdHhfaW5pdChzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICpjdHgsIGJv
b2wgaW50cik7Cj4gPiDCoHZvaWQgaTkxNV9nZW1fd3dfY3R4X2Zpbmkoc3RydWN0IGk5MTVfZ2Vt
X3d3X2N0eCAqY3R4KTsKPiA+IMKgaW50IF9fbXVzdF9jaGVjayBpOTE1X2dlbV93d19jdHhfYmFj
a29mZihzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4Cj4gPiAqY3R4KTsKPiA+IMKgdm9pZCBpOTE1X2dl
bV93d191bmxvY2tfc2luZ2xlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwo+ID4g
Kwo+ID4gKy8qIEludGVybmFsIGZ1bmN0aW9ucyB1c2VkIGJ5IHRoZSBpbmxpbmVzISBEb24ndCB1
c2UuICovCj4gPiArc3RhdGljIGlubGluZSBpbnQgX19pOTE1X2dlbV93d19maW5pKHN0cnVjdCBp
OTE1X2dlbV93d19jdHggKnd3LAo+ID4gaW50IGVycikKPiA+ICt7Cj4gPiArwqDCoMKgwqDCoMKg
IHd3LT5sb29wID0gMDsKPiA+ICvCoMKgwqDCoMKgwqAgaWYgKGVyciA9PSAtRURFQURMSykgewo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXJyID0gaTkxNV9nZW1fd3dfY3R4X2Jh
Y2tvZmYod3cpOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFlcnIpCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd3ctPmxvb3Ag
PSAxOwo+ID4gK8KgwqDCoMKgwqDCoCB9Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgIGlmICghd3ct
Pmxvb3ApCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpOTE1X2dlbV93d19jdHhf
ZmluaSh3dyk7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4gPiArfQo+ID4g
Kwo+ID4gK3N0YXRpYyBpbmxpbmUgdm9pZAo+ID4gK19faTkxNV9nZW1fd3dfaW5pdChzdHJ1Y3Qg
aTkxNV9nZW1fd3dfY3R4ICp3dywgYm9vbCBpbnRyKQo+ID4gK3sKPiA+ICvCoMKgwqDCoMKgwqAg
aTkxNV9nZW1fd3dfY3R4X2luaXQod3csIGludHIpOwo+ID4gK8KgwqDCoMKgwqDCoCB3dy0+bG9v
cCA9IDE7Cj4gPiArfQo+ID4gKwo+ID4gKyNkZWZpbmUgZm9yX2k5MTVfZ2VtX3d3KF93dywgX2Vy
ciwgX2ludHIpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwKPiA+
ICvCoMKgwqDCoMKgwqAgZm9yIChfX2k5MTVfZ2VtX3d3X2luaXQoX3d3LCBfaW50cik7IChfd3cp
LT5sb29wO8KgwqDCoMKgwqDCoCBcCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBfZXJyID0g
X19pOTE1X2dlbV93d19maW5pKF93dywgX2VycikpCj4gPiArCj4gPiDCoCNlbmRpZgo+ID4gLS0K
PiA+IDIuMzEuMQo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
