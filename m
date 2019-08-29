Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37096A1BC2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 15:45:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACCC26E10E;
	Thu, 29 Aug 2019 13:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE93D6E10E
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 13:45:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 06:45:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,443,1559545200"; d="scan'208";a="188549629"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.121.189])
 ([10.66.121.189])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Aug 2019 06:45:44 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: "Sharma, Shashank" <shashank.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190827191026.26175-1-animesh.manna@intel.com>
 <20190827191026.26175-8-animesh.manna@intel.com>
 <98c088ea-9489-f020-9e00-ba1957ffdddc@intel.com>
Message-ID: <05eaa5ef-42ec-7f1a-3a25-23714db2ee66@intel.com>
Date: Thu, 29 Aug 2019 19:15:43 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <98c088ea-9489-f020-9e00-ba1957ffdddc@intel.com>
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

SGksCgoKT24gOC8yOC8yMDE5IDEwOjM3IFBNLCBTaGFybWEsIFNoYXNoYW5rIHdyb3RlOgo+Cj4g
T24gOC8yOC8yMDE5IDEyOjQwIEFNLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+PiBEU0Igd2lsbCBi
ZSB1c2VkIGZvciBwZXJmb3JtYW5jZSBpbXByb3ZlbWVudCBmb3Igc29tZSBzcGVjaWFsIHNjZW5h
cmlvLgo+PiBEU0IgZW5naW5lIHdpbGwgYmUgZW5hYmxlZCBiYXNlZCBvbiBuZWVkIGFuZCBhZnRl
ciBjb21wbGV0aW9uIG9mIGl0cyAKPj4gd29yawo+PiB3aWxsIGJlIGRpc2FibGVkLiBBcGkgYWRk
ZWQgZm9yIGVuYWJsZS9kaXNhYmxlIG9wZXJhdGlvbiBieSB1c2luZyAKPj4gRFNCX0NUUkwKPj4g
cmVnaXN0ZXIuCj4+Cj4+IENjOiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwu
Y29tPgo+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQW5p
bWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA0MCArKysrKysrKysrKysrKysrKysr
KysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyAKPj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4+IGluZGV4IGQzNmVlODI0NDQy
Ny4uMmQ2ZTc4ODY4ZjJkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMKPj4gQEAgLTMzLDYgKzMzLDQ2IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpc19kc2Jf
YnVzeShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCj4+ICAgICAgIHJldHVybiBEU0JfU1RBVFVTICYg
STkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsKPj4gICB9Cj4+ICAgK3N0YXRpYyBi
b29sIGludGVsX2RzYl9lbmFibGVfZW5naW5lKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKPj4gK3sK
Pj4gKyAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsKPj4gKyAgICBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsK
Pj4gKyAgICBlbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7Cj4+ICsgICAgdTMyIGRzYl9jdHJs
Owo+PiArCj4+ICsgICAgZHNiX2N0cmwgPSBJOTE1X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNiLT5p
ZCkpOwo+PiArCj4+ICsgICAgaWYgKERTQl9TVEFUVVMgJiBkc2JfY3RybCkgewo+PiArICAgICAg
ICBEUk1fREVCVUdfS01TKCJEU0IgZW5naW5lIGlzIGJ1c3kuXG4iKTsKPj4gKyAgICAgICAgcmV0
dXJuIGZhbHNlOwo+PiArICAgIH0KPj4gKwo+PiArICAgIGRzYl9jdHJsIHw9IERTQl9FTkFCTEU7
Cj4+ICsgICAgSTkxNV9XUklURShEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwgZHNiX2N0cmwpOwo+
IHJlYWRiYWNrIERTQiBzdGF0dXMgYW5kIGNvbmZpcm0gaWYgdGhhdCdzIHJlYWxseSBlbmFibGVk
ID8KCk9rLgoKPj4gKwo+PiArICAgIHJldHVybiB0cnVlOwo+PiArfQo+PiArCj4+ICtzdGF0aWMg
Ym9vbCBpbnRlbF9kc2JfZGlzYWJsZV9lbmdpbmUoc3RydWN0IGludGVsX2RzYiAqZHNiKQo+PiAr
ewo+PiArICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOwo+PiArICAgIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYp
Owo+PiArICAgIGVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKPj4gKyAgICB1MzIgZHNiX2N0
cmw7Cj4+ICsKPj4gKyAgICBkc2JfY3RybCA9IEk5MTVfUkVBRChEU0JfQ1RSTChwaXBlLCBkc2It
PmlkKSk7Cj4+ICsKPj4gKyAgICBpZiAoRFNCX1NUQVRVUyAmIGRzYl9jdHJsKSB7Cj4+ICsgICAg
ICAgIERSTV9ERUJVR19LTVMoIkRTQiBlbmdpbmUgaXMgYnVzeS5cbiIpOwo+PiArICAgICAgICBy
ZXR1cm4gZmFsc2U7Cj4+ICsgICAgfQo+PiArCj4+ICsgICAgZHNiX2N0cmwgJj0gfkRTQl9FTkFC
TEU7Cj4+ICsgICAgSTkxNV9XUklURShEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwgZHNiX2N0cmwp
Owo+PiArCj4KPiBTYW1lIGFzIGFib3ZlLgoKT2suCgpSZWdhcmRzLApBbmltZXNoCj4KPiAtIFNo
YXNoYW5rCj4KPj4gKyAgICByZXR1cm4gdHJ1ZTsKPj4gK30KPj4gKwo+PiAgIHN0cnVjdCBpbnRl
bF9kc2IgKgo+PiAgIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4+ICAg
ewoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
