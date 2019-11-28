Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E627B10CC0F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 16:48:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2921789B67;
	Thu, 28 Nov 2019 15:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB6989B67
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 15:48:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 07:48:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="217619464"
Received: from rosenbaf-mobl1.ger.corp.intel.com (HELO [10.252.49.190])
 ([10.252.49.190])
 by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2019 07:48:05 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
 <20191127201222.16669-15-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <a716a48f-24bb-0893-84a2-a1a8593ff1f0@linux.intel.com>
Date: Thu, 28 Nov 2019 16:48:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191127201222.16669-15-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 14/14] drm/i915/fbc: Reallocate cfb if we
 need more of it
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>, Daniel Drake <drake@endlessm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjctMTEtMjAxOSBvbSAyMToxMiBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFRoZSBjb2Rl
IGFzc3VtZXMgd2UgY2FuIG9taXQgdGhlIGNmYiBhbGxvY2F0aW9uIG9uY2UgZmJjCj4gaGFzIGJl
ZW4gZW5hYmxlZCBvbmNlLiBUaGF0J3Mgbm9uc2Vuc2UuIExldCdzIHRyeSB0bwo+IHJlYWxsb2Nh
dGUgaXQgaWYgd2UgbmVlZCB0by4KPgo+IFRoZSBjb2RlIGlzIHN0aWxsIGEgbWVzcywgYnV0IG1h
eWJlIHRoaXMgaXMgZW5vdWdoIHRvIGdldAo+IGZiYyBnb2luZyBpbiBzb21lIGNhc2VzIHdoZXJl
IGl0IGluaXRpYWxseSB1bmRlcmFsbG9jYXRlcwo+IHRoZSBjZmIgYW5kIHRoZXJlJ3Mgbm8gZnVs
bCBtb2Rlc2V0IHRvIGZpeCBpdCB1cC4KPgo+IENjOiBEYW5pZWwgRHJha2UgPGRyYWtlQGVuZGxl
c3NtLmNvbT4KPiBDYzogUGF1bG8gWmFub25pIDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+Cj4g
Q2M6IEppYW4tSG9uZyBQYW4gPGppYW4taG9uZ0BlbmRsZXNzbS5jb20+Cj4gQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDIyICsrKysr
KysrKysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDcg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMK
PiBpbmRleCBjOTc2Njk4YjA3MjkuLjkyODA1OWE1ZGE4MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+IEBAIC02NzIsNiArNjcyLDE0IEBAIHN0YXRpYyB2
b2lkIGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0IGludGVsX2NydGMgKmNydGMs
Cj4gIAkJY2FjaGUtPmZlbmNlX2lkID0gLTE7Cj4gIH0KPiAgCj4gK3N0YXRpYyBib29sIGludGVs
X2ZiY19jZmJfc2l6ZV9jaGFuZ2VkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
PiArewo+ICsJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5mYmM7Cj4gKwo+ICsJ
cmV0dXJuIGludGVsX2ZiY19jYWxjdWxhdGVfY2ZiX3NpemUoZGV2X3ByaXYsICZmYmMtPnN0YXRl
X2NhY2hlKSA+Cj4gKwkJZmJjLT5jb21wcmVzc2VkX2ZiLnNpemUgKiBmYmMtPnRocmVzaG9sZDsK
PiArfQo+ICsKPiAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YykKPiAgewo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gQEAgLTc1Nyw4ICs3NjUsNyBAQCBzdGF0aWMg
Ym9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICAJ
ICogd2UgZGlkbid0IGdldCBhbnkgaW52YWxpZGF0ZS9kZWFjdGl2YXRlIGNhbGxzLCBidXQgdGhp
cyB3b3VsZCByZXF1aXJlCj4gIAkgKiBhIGxvdCBvZiB0cmFja2luZyBqdXN0IGZvciBhIHNwZWNp
ZmljIGNhc2UuIElmIHdlIGNvbmNsdWRlIGl0J3MgYW4KPiAgCSAqIGltcG9ydGFudCBjYXNlLCB3
ZSBjYW4gaW1wbGVtZW50IGl0IGxhdGVyLiAqLwo+IC0JaWYgKGludGVsX2ZiY19jYWxjdWxhdGVf
Y2ZiX3NpemUoZGV2X3ByaXYsICZmYmMtPnN0YXRlX2NhY2hlKSA+Cj4gLQkgICAgZmJjLT5jb21w
cmVzc2VkX2ZiLnNpemUgKiBmYmMtPnRocmVzaG9sZCkgewo+ICsJaWYgKGludGVsX2ZiY19jZmJf
c2l6ZV9jaGFuZ2VkKGRldl9wcml2KSkgewo+ICAJCWZiYy0+bm9fZmJjX3JlYXNvbiA9ICJDRkIg
cmVxdWlyZW1lbnRzIGNoYW5nZWQiOwo+ICAJCXJldHVybiBmYWxzZTsKPiAgCX0KPiBAQCAtMTEx
MiwxMiArMTExOSwxMiBAQCB2b2lkIGludGVsX2ZiY19lbmFibGUoc3RydWN0IGludGVsX2NydGMg
KmNydGMsCj4gIAltdXRleF9sb2NrKCZmYmMtPmxvY2spOwo+ICAKPiAgCWlmIChmYmMtPmNydGMp
IHsKPiAtCQlXQVJOX09OKGZiYy0+Y3J0YyA9PSBjcnRjICYmICFjcnRjX3N0YXRlLT5lbmFibGVf
ZmJjKTsKPiAtCQlnb3RvIG91dDsKPiAtCX0KPiArCQlpZiAoZmJjLT5jcnRjICE9IGNydGMgfHwK
PiArCQkgICAgIWludGVsX2ZiY19jZmJfc2l6ZV9jaGFuZ2VkKGRldl9wcml2KSkKPiArCQkJZ290
byBvdXQ7Cj4gIAo+IC0JaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfZmJjKQo+IC0JCWdvdG8gb3V0
Owo+ICsJCV9faW50ZWxfZmJjX2Rpc2FibGUoZGV2X3ByaXYpOwo+ICsJfQo+ICAKPiAgCVdBUk5f
T04oZmJjLT5hY3RpdmUpOwo+ICAKPiBAQCAtMTEzMCw2ICsxMTM3LDcgQEAgdm9pZCBpbnRlbF9m
YmNfZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ICAJaWYgKGludGVsX2ZiY19hbGxv
Y19jZmIoZGV2X3ByaXYsCj4gIAkJCQlpbnRlbF9mYmNfY2FsY3VsYXRlX2NmYl9zaXplKGRldl9w
cml2LCBjYWNoZSksCj4gIAkJCQlmYi0+Zm9ybWF0LT5jcHBbMF0pKSB7Cj4gKwkJY2FjaGUtPnBs
YW5lLnZpc2libGUgPSBmYWxzZTsKPiAgCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAibm90IGVub3Vn
aCBzdG9sZW4gbWVtb3J5IjsKPiAgCQlnb3RvIG91dDsKPiAgCX0KCk1ha2VzIHNlbnNlLCB1bmZv
cnR1bmF0ZWx5IGttc19jdXJzb3JfbGVnYWN5IHN0YXJ0cyBmYWlsaW5nIG9uIHRoaXMgc2VyaWVz
LiA6KAoKRm9yIDEtMTEsIDE0CgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KCldlIHNob3VsZCBwcm9iYWJseSBnZXQgcmlk
IG9mIHRoZSBGQkMgZGlzYWJsZSBvbiBmcm9udGJ1ZmZlciBkaXNhYmxlIGFzIHdlbGwuIEkgaGFk
IHNvbWUgcGF0Y2hlcyBidXQgbm90aGluZyB1cHN0cmVhbS13b3J0aHkgeWV0LiA6KAoKMTLCoCBh
bmQgMTMgbmVlZCBtb3JlIHRob3VnaHQgZm9yIG5vdywga21zX2N1cnNvcl9sZWdhY3kgaXMgZmFp
bGluZy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
