Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4D4AD9BD
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 15:13:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 961E589BF1;
	Mon,  9 Sep 2019 13:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C4289BF1
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 13:13:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 06:13:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="335592501"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.93])
 ([10.66.116.93])
 by orsmga004.jf.intel.com with ESMTP; 09 Sep 2019 06:13:07 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190907110735.10302-1-animesh.manna@intel.com>
 <20190907110735.10302-6-animesh.manna@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <01ce6461-6812-8e26-7132-b2a93ef76a36@intel.com>
Date: Mon, 9 Sep 2019 18:43:06 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190907110735.10302-6-animesh.manna@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 05/11] drm/i915/dsb: Check DSB engine
 status.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvNy8yMDE5IDQ6MzcgUE0sIEFuaW1lc2ggTWFubmEgd3JvdGU6Cj4gQXMgcGVyIGJzcGVj
IGNoZWNrIGZvciBEU0Igc3RhdHVzIGJlZm9yZSBwcm9ncmFtbWluZyBhbnkKPiBvZiBpdHMgcmVn
aXN0ZXIuIElubGluZSBmdW5jdGlvbiBhZGRlZCB0byBjaGVjayB0aGUgZHNiIHN0YXR1cy4KPgo+
IENjOiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+IENjOiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJp
Z28udml2aUBpbnRlbC5jb20+Cj4gQ2M6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1h
QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5h
QGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMgfCA5ICsrKysrKysrKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICB8IDcgKysrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCsp
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPiBpbmRleCAwZjU1
ZWQ2ODNkNDEuLjJjODQxNTUxOGM2NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kc2IuYwo+IEBAIC0xNyw2ICsxNywxNSBAQAo+ICAgI2RlZmluZSBEU0JfQllURV9F
Tl9TSElGVAkJMjAKPiAgICNkZWZpbmUgRFNCX1JFR19WQUxVRV9NQVNLCQkweGZmZmZmCj4gICAK
PiArc3RhdGljIGlubGluZSBib29sIGlzX2RzYl9idXN5KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikK
PiArewo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBjb250YWluZXJfb2YoZHNiLCB0eXBl
b2YoKmNydGMpLCBkc2IpOwo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gKwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7
Cj4gKwo+ICsJcmV0dXJuIERTQl9TVEFUVVMgJiBJOTE1X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNi
LT5pZCkpOwo+ICt9Cj4gKwo+ICAgc3RydWN0IGludGVsX2RzYiAqCj4gICBpbnRlbF9kc2JfZ2V0
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICAgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+
IGluZGV4IDAwNmNmZmQ1NmJlMi4uYTMwOTlmNzEyYWU2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCj4gQEAgLTExNjc2LDQgKzExNjc2LDExIEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewo+
ICAgI2RlZmluZSBQT1JUX1RYX0RGTEVYRFBDU1NTKGZpYSkJCV9NTUlPX0ZJQSgoZmlhKSwgMHgw
MDg5NCkKPiAgICNkZWZpbmUgICBEUF9QSFlfTU9ERV9TVEFUVVNfTk9UX1NBRkUodGNfcG9ydCkJ
CSgxIDw8ICh0Y19wb3J0KSkKPiAgIAo+ICsvKiBUaGlzIHJlZ2lzdGVyIGNvbnRyb2xzIHRoZSBE
aXNwbGF5IFN0YXRlIEJ1ZmZlciAoRFNCKSBlbmdpbmVzLiAqLwo+ICsjZGVmaW5lIF9EU0JTTF9J
TlNUQU5DRV9CQVNFCQkweDcwQjAwCj4gKyNkZWZpbmUgRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQp
CShfRFNCU0xfSU5TVEFOQ0VfQkFTRSArIFwKPiArCQkJCQkgKHBpcGUpICogMHgxMDAwICsgKGlk
KSAqIDEwMCkKCldoeSBpcyBwaXBlIGluICgpID8KCi0gU2hhc2hhbmsKCj4gKyNkZWZpbmUgRFNC
X0NUUkwocGlwZSwgaWQpCQlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkgKyAweDgpCj4g
KyNkZWZpbmUgICBEU0JfU1RBVFVTCQkJKDEgPDwgMCkKPiArCj4gICAjZW5kaWYgLyogX0k5MTVf
UkVHX0hfICovCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
