Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52921A081C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 19:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C7589CB8;
	Wed, 28 Aug 2019 17:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F9D489CB8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 17:07:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 10:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="180619942"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.252.72.100])
 ([10.252.72.100])
 by fmsmga008.fm.intel.com with ESMTP; 28 Aug 2019 10:07:20 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190827191026.26175-1-animesh.manna@intel.com>
 <20190827191026.26175-8-animesh.manna@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <98c088ea-9489-f020-9e00-ba1957ffdddc@intel.com>
Date: Wed, 28 Aug 2019 22:37:19 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827191026.26175-8-animesh.manna@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 07/11] drm/i915/dsb: functions to
 enable/disable DSB engine.
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

Ck9uIDgvMjgvMjAxOSAxMjo0MCBBTSwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPiBEU0Igd2lsbCBi
ZSB1c2VkIGZvciBwZXJmb3JtYW5jZSBpbXByb3ZlbWVudCBmb3Igc29tZSBzcGVjaWFsIHNjZW5h
cmlvLgo+IERTQiBlbmdpbmUgd2lsbCBiZSBlbmFibGVkIGJhc2VkIG9uIG5lZWQgYW5kIGFmdGVy
IGNvbXBsZXRpb24gb2YgaXRzIHdvcmsKPiB3aWxsIGJlIGRpc2FibGVkLiBBcGkgYWRkZWQgZm9y
IGVuYWJsZS9kaXNhYmxlIG9wZXJhdGlvbiBieSB1c2luZyBEU0JfQ1RSTAo+IHJlZ2lzdGVyLgo+
Cj4gQ2M6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gQ2M6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9k
cmlnby52aXZpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMgfCA0MCArKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBj
aGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMKPiBpbmRleCBkMzZlZTgyNDQ0MjcuLjJkNmU3ODg2OGYyZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+IEBAIC0zMyw2ICszMyw0NiBA
QCBzdGF0aWMgaW5saW5lIGJvb2wgaXNfZHNiX2J1c3koc3RydWN0IGludGVsX2RzYiAqZHNiKQo+
ICAgCXJldHVybiBEU0JfU1RBVFVTICYgSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQp
KTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgYm9vbCBpbnRlbF9kc2JfZW5hYmxlX2VuZ2luZShzdHJ1
Y3QgaW50ZWxfZHNiICpkc2IpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gZHNi
LT5jcnRjOwo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShj
cnRjLT5iYXNlLmRldik7Cj4gKwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7Cj4gKwl1MzIg
ZHNiX2N0cmw7Cj4gKwo+ICsJZHNiX2N0cmwgPSBJOTE1X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNi
LT5pZCkpOwo+ICsKPiArCWlmIChEU0JfU1RBVFVTICYgZHNiX2N0cmwpIHsKPiArCQlEUk1fREVC
VUdfS01TKCJEU0IgZW5naW5lIGlzIGJ1c3kuXG4iKTsKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwl9
Cj4gKwo+ICsJZHNiX2N0cmwgfD0gRFNCX0VOQUJMRTsKPiArCUk5MTVfV1JJVEUoRFNCX0NUUkwo
cGlwZSwgZHNiLT5pZCksIGRzYl9jdHJsKTsKcmVhZGJhY2sgRFNCIHN0YXR1cyBhbmQgY29uZmly
bSBpZiB0aGF0J3MgcmVhbGx5IGVuYWJsZWQgPwo+ICsKPiArCXJldHVybiB0cnVlOwo+ICt9Cj4g
Kwo+ICtzdGF0aWMgYm9vbCBpbnRlbF9kc2JfZGlzYWJsZV9lbmdpbmUoc3RydWN0IGludGVsX2Rz
YiAqZHNiKQo+ICt7Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsKPiAr
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5k
ZXYpOwo+ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+ICsJdTMyIGRzYl9jdHJsOwo+
ICsKPiArCWRzYl9jdHJsID0gSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsKPiAr
Cj4gKwlpZiAoRFNCX1NUQVRVUyAmIGRzYl9jdHJsKSB7Cj4gKwkJRFJNX0RFQlVHX0tNUygiRFNC
IGVuZ2luZSBpcyBidXN5LlxuIik7Cj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsJfQo+ICsKPiArCWRz
Yl9jdHJsICY9IH5EU0JfRU5BQkxFOwo+ICsJSTkxNV9XUklURShEU0JfQ1RSTChwaXBlLCBkc2It
PmlkKSwgZHNiX2N0cmwpOwo+ICsKClNhbWUgYXMgYWJvdmUuCgotIFNoYXNoYW5rCgo+ICsJcmV0
dXJuIHRydWU7Cj4gK30KPiArCj4gICBzdHJ1Y3QgaW50ZWxfZHNiICoKPiAgIGludGVsX2RzYl9n
ZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gICB7Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
